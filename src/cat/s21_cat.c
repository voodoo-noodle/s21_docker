#include "s21_cat.h"

int main(int argc, char *argv[]) {
  get_flags(argc, argv);
  while (optind < argc) {
    s21_cat(argv);
    optind++;
  }
  return 0;
}

int get_flags(int argc, char *argv[]) {
  int find_flag;
  find_flag = getopt_long(argc, argv, "beEnstTv", long_option, NULL);
  if (find_flag != -1) {
    switch (find_flag) {
      case 'b':
        flags.b_flag = 1;
        break;
      case 'e':
        flags.e_flag = 1;
        flags.v_flag = 1;
        break;
      case 'E':
        flags.e_flag = 1;
        break;
      case 'n':
        flags.n_flag = 1;
        break;
      case 's':
        flags.s_flag = 1;
        break;
      case 't':
        flags.t_flag = 1;
        flags.v_flag = 1;
        break;
      case 'T':
        flags.t_flag = 1;
        break;
      case 'v':
        flags.v_flag = 1;
        break;
      default:
        exit(1);
        break;
    }
  }
  return find_flag;
}

void s21_cat(char *argv[]) {
  int empty_string = 0;
  int counter_strings = 1;
  char last_char = '\n';
  FILE *file;
  file = fopen(argv[optind], "rb");
  if (file != NULL) {
    while (feof(file) == 0) {
      int read_char = fgetc(file);
      if (read_char == EOF) {
        break;
      }
      if (((flags.b_flag && read_char != '\n') || flags.n_flag) &&
          last_char == '\n') {
        printf("%6d\t", counter_strings++);
      }
      if (flags.e_flag && read_char == '\n') printf("$");
      if (flags.s_flag && read_char == '\n' && last_char == '\n') {
        empty_string++;
        if (empty_string > 1) {
          continue;
        }
      } else {
        empty_string = 0;
      }
      if (flags.t_flag && read_char == '\t') {
        printf("^");
        read_char = 'I';
      }
      if (flags.v_flag) {
        if ((read_char >= 0 && read_char < 9) ||
            (read_char > 10 && read_char < 32) ||
            (read_char > 126 && read_char <= 160)) {
          printf("^");
          if (read_char < 126) {
            read_char += 64;
          } else {
            read_char -= 64;
          }
        }
      }
      printf("%c", read_char);
      last_char = read_char;
    }
    fclose(file);
  } else {
    fprintf(stderr, "cat: %s: No such file or directory\n", argv[optind]);
  }
}
