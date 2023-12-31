#ifndef __ASN_DECODER__
#define __ASN_DECODER__

#include <stdint.h>

typedef enum { MIB_4G, SIB_4G } PayloadType;

typedef struct _ASNDecoder ASNDecoder;

ASNDecoder * init_asn_decoder(char * path, char * name);
int push_asn_payload(ASNDecoder * decoder, uint8_t * payload, int len, PayloadType type, uint32_t tti);
void terminate_asn_decoder(ASNDecoder * decoder);

#endif