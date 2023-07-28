#include <assert.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <sys/time.h>
#include <unistd.h>
#include "srsran/common/crash_handler.h"
#include "srsran/srsran.h"
#include "ngscope/hdr/dciLib/radio.h"
#include "ngscope/hdr/dciLib/task_scheduler.h"
#include "ngscope/hdr/dciLib/dci_decoder.h"
#include "ngscope/hdr/dciLib/load_config.h"
#include "ngscope/hdr/dciLib/ngscope_main.h"
#include "ngscope/hdr/dciLib/asn_decoder.h"


bool go_exit = false;

void sig_int_handler(int signo)
{
  printf("SIGINT received. Exiting...\n");
  /* Terminate ASN decoder */
  terminate_asn_decoder();

  if (signo == SIGINT) {
    go_exit = true;
  } else if (signo == SIGSEGV) {
    exit(1);
  }
}

int main(int argc, char** argv){
    ngscope_config_t config;

    if(argc != 2) {
      printf("USAGE: %s <NG-Scope Config file>\n", argv[0]);
      return 1;
    }

    init_asn_decoder("jon.sib");

    /* Signal handlers */
    srsran_debug_handle_crash(argc, argv);
    sigset_t sigset;
    sigemptyset(&sigset);
    sigaddset(&sigset, SIGINT);
    sigprocmask(SIG_UNBLOCK, &sigset, NULL);
    signal(SIGINT, sig_int_handler);


    // Load the configurations
    printf("Reading %s config file...\n", argv[1]);
    ngscope_read_config(&config, argv[1]);

    ngscope_main(&config);
    return 1;
}
