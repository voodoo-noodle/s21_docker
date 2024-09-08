#include "s21_grep.h"

int main(int argc, char *argv[]) {
  get_flags(argc, argv);
  while (optind < argc) {
    s21_grep(argv);
    optind++;
  }
  return 0;
}

int get_flags(int argc, char *argv[]) {
  int find_flag = getopt(argc, argv, "e:ivclnhsf:o");
  if (find_flag != -1) {
    switch (find_flag) {
      case 'e':
        flags.e_flag = 1;
        strcat(flags.str_regexec, optarg);
        strcat(flags.str_regexec, "|");
        break;
      case 'i':
        flags.i_flag = 1;
        break;
      case 'v':
        flags.v_flag = 1;
        break;
      case 'c':
        flags.c_flag = 1;
        break;
      case 'l':
        flags.l_flag = 1;
        break;
      case 'n':
        flags.n_flag = 1;
        break;
      case 'h':
        flags.h_flag = 1;
        break;
      case 's':
        flags.s_flag = 1;
        break;
      case 'f':
        flags.f_flag = 1;
        strcpy(flags.filename, optarg);
        flag_f(flags);
        break;
      case 'o':
        flags.o_flag = 1;
        break;
      default:
        break;
    }
    if (flags.v_flag && !flags.f_flag) {
      flags.o_flag = 0;
    }
  }
  if (!flags.e_flag && !flags.f_flag) {
    if (argc > optind) {
      strcat(flags.str_regexec, argv[optind]);
    }
    optind++;
  }
  if (flags.e_flag || flags.f_flag) {
    flags.str_regexec[strlen(flags.str_regexec) - 1] = '\0';
  }
  if (argc - optind > 1) flags.c_flags = 1;
  return find_flag;
}

void s21_grep(char *argv[]) {
  FILE *file;
  regex_t reg;
  regmatch_t start;
  int counter = 0;
  int str_number = 0;
  int flag_i = REG_EXTENDED;
  if (flags.i_flag) {
    flag_i = REG_EXTENDED + REG_ICASE;
  }
  regcomp(&reg, flags.str_regexec, flag_i);
  file = fopen(argv[optind], "rb");
  if (file != NULL) {
    while (fgets(flags.str, BUFFER, file) != NULL) {
      int match = regexec(&reg, flags.str, 1, &start, 0);
      str_number++;
      if (flags.o_flag) strcpy(flags.str_o, flags.str);
      if ((!match || flags.v_flag) && flags.c_flag && !flags.l_flag &&
          !flags.h_flag && !flags.c_flag && !flags.f_flag) {
        printf("%s", argv[optind]);
      }
      if (!match) counter++;
      if (flags.v_flag) match = !match;
      if (!match && !flags.l_flag && !flags.c_flag && !flags.n_flag &&
          !flags.o_flag) {
        printf("%s", flags.str);
        if (flags.str[strlen(flags.str) - 1] != '\n') printf("\n");
      }
      if (!match && flags.n_flag && !flags.c_flag && !flags.l_flag) {
        if (flags.o_flag) {
          printf("%d:", str_number);
        } else {
          printf("%d:%s", str_number, flags.str);
        }
        if (flags.str[strlen(flags.str) - 1] != '\n') printf("\n");
      }
      if (!match && flags.o_flag && !flags.l_flag && !flags.c_flag) {
        char *pointer = flags.str_o;
        while ((regexec(&reg, pointer, 1, &start, 0) == 0)) {
          printf("%.*s\n", (int)(start.rm_eo - start.rm_so),
                 pointer + start.rm_so);
          pointer += start.rm_eo;
        }
      }
    }
    regfree(&reg);
    if (flags.l_flag && counter < 1 && flags.v_flag) {
      printf("%s\n", argv[optind]);
    }
    if (flags.l_flag && counter > 0 && !flags.c_flag)
      printf("%s\n", argv[optind]);
    if (flags.c_flag && flags.c_flags && !flags.h_flag)
      printf("%s:", argv[optind]);
    if (flags.c_flag && !flags.l_flag && !flags.v_flag) printf("%d\n", counter);
    if (flags.c_flag && !flags.l_flag && flags.v_flag)
      printf("%d\n", str_number - counter);
    fclose(file);
  } else {
    regfree(&reg);
    if (!flags.s_flag) {
      fprintf(stdout, "grep: %s: No such file or directory\n", argv[optind]);
    }
  }
}

void flag_f() {
  FILE *f;
  f = fopen(flags.filename, "rb");
  if (f != NULL) {
    while (!feof(f)) {
      if (fgets(flags.str, 1000, f) != NULL) {
        if (flags.str[strlen(flags.str) - 1] == '\n' &&
            strlen(flags.str) - 1 != 0) {
          flags.str[strlen(flags.str) - 1] = '\0';
        }
        strcat(flags.str_regexec, flags.str);
        strcat(flags.str_regexec, "|");
      }
    }
    fclose(f);
  }
}