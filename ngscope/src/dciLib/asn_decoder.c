#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include "ngscope/hdr/dciLib/asn_decoder.h"
#ifdef ENABLE_ASN1DEC
#include <libasn1dec.h>
#endif

#define MSG_QUEUE_POLL_TIME 10000

/*************************/
/* Structure definitions */
/*************************/
typedef struct _Node Node;
struct _Node
{
    Node * next;
    uint8_t * payload;
    int len;
};

typedef struct _ASNDecoder
{
    FILE * file;
    Node * first;
    Node * last;
    pthread_mutex_t mux;
} ASNDecoder;
/* Global decoder used by the functions in this module */
ASNDecoder decoder;


/***************************/
/* Message queue functions */
/***************************/
void queue_push(Node * node)
{
    pthread_mutex_lock(&(decoder.mux));
    /* The queue is empty */
    if(decoder.last == NULL) {
        decoder.first = node;
        decoder.last = node;
    }
    else { 
        decoder.last->next = node;
        decoder.last = node;
    }
    pthread_mutex_unlock(&(decoder.mux));
    return;
}

Node * queue_pop()
{
    Node * node = NULL;
    pthread_mutex_lock(&(decoder.mux));
    /* The queue is emty */
    if(decoder.first == NULL)
        goto exit;
    /* Only one message in the queue */
    if(decoder.first == decoder.last) {
        node = decoder.first;
        decoder.first = NULL;
        decoder.last = NULL;
        goto exit;
    }
    /* Multiple messages in the queue */
    node = decoder.first;
    decoder.first = node->next;
exit:
    pthread_mutex_unlock(&(decoder.mux));
    return node;
}


/****************************************************/
/* Private functions used internally in this module */
/****************************************************/
void * asn_processor(void * args)
{
    Node * node;

    /* Loop that polls the message queue */
    while(1) {
        /* Get node from the queue */
        if((node = queue_pop()) == NULL) {
            usleep(MSG_QUEUE_POLL_TIME); /* Sleep 10 ms */
            continue; /* Continue if queue is empty */
        }
#ifdef ENABLE_ASN1DEC
        bcch_dl_sch_decode(decoder.file, node->payload, node->len);
        //uint8_t payload[] = {0, 6, 72, 131, 56, 93, 127, 113, 18, 128, 2, 255, 254, 38, 17, 128, 0, 0};
        //bcch_dl_sch_decode(decoder.file, payload, 18);
        /* Free Node and payload */
        free(node->payload);
        free(node);
#else
        fprintf(decoder.file, "SIB message cannot be decoded: libasn1dec is not installed\n");
#endif
    }

    return NULL;
}


/********************/
/* Public functions */
/********************/

int init_asn_decoder(const char * path)
{
    pthread_t processor;

    if((decoder.file = fopen(path, "w")) == NULL) {
        decoder.file = NULL;
        printf("Error openning SIB log file %s (%d): %s\n", path, errno, strerror(errno));
        return 1;
    }

    if(pthread_create(&processor, NULL, &asn_processor, NULL) > 0) {
        printf("Error creating SIB processing thread\n");
        fclose(decoder.file);
        decoder.file = NULL;
        return 1;
    }
    return 0;
}

int push_asn_payload(uint8_t * payload, int len)
{
    Node * node;

    /* If the decoder initialization has failed, this fucntion does nothing and returns error */
    if(decoder.file == NULL)
        return 1;

    /* Allocate memory for a new Node in the message queue */
    if((node = (Node *) malloc(sizeof(Node))) == NULL)
        return 1;
    /* Allocate memory for the message payload */
    if((node->payload = (uint8_t *) malloc(len)) == NULL) {
        free(node);
        return 1;
    }
    /* Fill message data */
    memcpy(node->payload, payload, len);
    node->len = len;
    node->next = NULL;
    /* Push message into the queue */
    queue_push(node);
    return 0;
}

void terminate_asn_decoder()
{   
    /* Lock the mutex to ensure the file is not closed durin a write */
    pthread_mutex_lock(&(decoder.mux));
    /* Close SIB log file*/
    if(decoder.file)
        fclose(decoder.file);
    pthread_mutex_unlock(&(decoder.mux));
    return;
}