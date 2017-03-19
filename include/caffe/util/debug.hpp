#include <sys/time.h>

#define DEBUG_WATCHES 20
  
timespec debug_diff_ts(timespec start, timespec end);
unsigned long debug_diff_ms(timespec start, timespec end);
timespec debug_gettime_ts();

int debug_getwatch();

unsigned long debug_watch_ms(int watch_id);
unsigned long debug_global_watch_start_ms();
unsigned long debug_global_watch_read_ms();
void debug_global_watch_report_start();
void debug_global_watch_report(char* msg);


