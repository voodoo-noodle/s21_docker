#ifndef S21_CAT_H
#define S21_CAT_H

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>

struct flag {
  int b_flag;
  int e_flag;
  int n_flag;
  int s_flag;
  int t_flag;
  int v_flag;
} flags;

const struct option long_option[] = {{"number-nonblank", 0, 0, 'b'},
                                     {"number", 0, 0, 'n'},
                                     {"squeeze-blank", 0, 0, 's'},
                                     {0, 0, 0, 0}};

int get_flags(int argc, char *argv[]);
void s21_cat(char *argv[]);

#endif