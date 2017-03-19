#include <time.h>
#include <sys/time.h>
#include <stdio.h>
#include "caffe/util/debug.hpp"
  
timespec debug_diff_ts(timespec start, timespec end) {
  timespec temp;
  if ((end.tv_nsec-start.tv_nsec)<0) {
	  temp.tv_sec = end.tv_sec-start.tv_sec-1;
	  temp.tv_nsec = 1000000000+end.tv_nsec-start.tv_nsec;
  } else {
	  temp.tv_sec = end.tv_sec-start.tv_sec;
	  temp.tv_nsec = end.tv_nsec-start.tv_nsec;
  }
  return temp;
}

unsigned long debug_diff_ms(timespec start, timespec end) {
  timespec temp = debug_diff_ts(start, end);
  return (temp.tv_nsec / 1000000 + temp.tv_sec*1000);
}

timespec debug_gettime_ts() {
  timespec temp;
  clock_gettime(CLOCK_REALTIME, &temp);
  return temp;
}


timespec watches_prev_ts[DEBUG_WATCHES];
int watches_cnt = 0;

int debug_getwatch() {
  int temp = watches_cnt;
  watches_cnt++;
  return temp;
}

int global_watch = debug_getwatch();
timespec global_last_point_ts;

unsigned long debug_watch_ms(int watch_id) {
  timespec current = debug_gettime_ts();
  unsigned long temp = debug_diff_ms(watches_prev_ts[watch_id], current); 
  watches_prev_ts[watch_id] = current;
  return temp;
}

unsigned long debug_global_watch_start_ms() {
  unsigned long temp = debug_watch_ms(global_watch);
  global_last_point_ts = watches_prev_ts[global_watch];
  return temp;
}

unsigned long debug_global_watch_read_ms() {
  timespec current = debug_gettime_ts();
  unsigned long temp = debug_diff_ms(watches_prev_ts[global_watch], current); 
  global_last_point_ts = current;
  return temp;
}

void debug_global_watch_report_start() {
  unsigned long delta_to_start_ms = debug_global_watch_start_ms();
  printf("Start --> %ju\n", delta_to_start_ms);
}

void debug_global_watch_report(char* msg) {
  timespec old_last_point_ts = global_last_point_ts;
  unsigned long delta_to_start_ms = debug_global_watch_read_ms();
  unsigned long delta_to_last_point_ms = debug_diff_ms(old_last_point_ts, global_last_point_ts);
  printf("%s --> %ju(%ju)\n", msg, delta_to_start_ms, delta_to_last_point_ms);
}
