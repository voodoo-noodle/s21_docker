CC= gcc

CLANG = clang-format

all: s21_grep

s21_grep: s21_grep.c
	$(CC) s21_grep.c -o s21_grep

test:
	@bash grep_test.sh

clean:
	rm -rf s21_grep

rebuild:
	make clean
	make all

clang_n:
	$(CLANG) -style=Google -n *.[ch]


clang_i:
	$(CLANG) -style=Google -i *.[ch]
