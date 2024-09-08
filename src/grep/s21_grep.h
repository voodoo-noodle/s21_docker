#ifndef S21_GREP_H
#define S21_GREP_H

#define BUFFER 10000

#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <string.h>

struct flag {
  int e_flag;
  int i_flag;
  int v_flag;
  int c_flag;
  int l_flag;
  int n_flag;
  int h_flag;
  int s_flag;
  int f_flag;
  int o_flag;
  int c_flags;
  char str[BUFFER];
  char str_regexec[BUFFER];
  char str_o[BUFFER];
  char filename[BUFFER];
} flags;

int get_flags(int argc, char *argv[]);
void s21_grep(char *argv[]);
void flag_f();

#endif