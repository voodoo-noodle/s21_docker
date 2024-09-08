CC= gcc

CLANG = clang-format

all: s21_cat

s21_cat: s21_cat.c
	$(CC) s21_cat.c -o s21_cat

test:
	@bash cat_test.sh

clean:
	rm -f s21_cat

clang_n:
	$(CLANG) -style=Google -n *.[ch]

clang_i:
	$(CLANG) -style=Google -i *.[ch]



