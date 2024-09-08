#!/bin/bash
echo -----------------------------------------------------TEST_E_FLAG_1
grep -e one ../common/test_4.txt > grep_test_1_e
./s21_grep -e one ../common/test_4.txt > s21_grep_test_1_e
if (diff -s grep_test_1_e s21_grep_test_1_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_e s21_grep_test_1_e
echo -----------------------------------------------------TEST_E_FLAG_2
grep -e Hel ../common/test_4.txt > grep_test_2_e
./s21_grep -e Hel ../common/test_4.txt > s21_grep_test_2_e
if (diff -s grep_test_2_e s21_grep_test_2_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_e s21_grep_test_2_e
echo -----------------------------------------------------TEST_E_FLAG_3
grep -e A ../common/test_3.txt > grep_test_3_e
./s21_grep -e A ../common/test_3.txt > s21_grep_test_3_e
if (diff -s grep_test_3_e s21_grep_test_3_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_e s21_grep_test_3_e
echo -----------------------------------------------------TEST_I_FLAG_1
grep -i OnE ../common/test_4.txt > grep_test_1_i
./s21_grep -i OnE ../common/test_4.txt > s21_grep_test_1_i
if (diff -s grep_test_1_i s21_grep_test_1_i); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_i s21_grep_test_1_i
echo -----------------------------------------------------TEST_I_FLAG_2
grep -i hel ../common/test_2.txt > grep_test_2_i
./s21_grep -i hel ../common/test_2.txt > s21_grep_test_2_i
if (diff -s grep_test_2_i s21_grep_test_2_i); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_i s21_grep_test_2_i
echo -----------------------------------------------------TEST_I_FLAG_3
grep -i a ../common/test_3.txt > grep_test_3_i
./s21_grep -i a ../common/test_3.txt > s21_grep_test_3_i
if (diff -s grep_test_3_i s21_grep_test_3_i); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_i s21_grep_test_3_i
echo -----------------------------------------------------TEST_V_FLAG_1
grep -v one ../common/test_4.txt > grep_test_1_v
./s21_grep -v one ../common/test_4.txt > s21_grep_test_1_v
if (diff -s grep_test_1_v s21_grep_test_1_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_v s21_grep_test_1_v
echo -----------------------------------------------------TEST_V_FLAG_2
grep -v Hel ../common/test_2.txt > grep_test_2_v
./s21_grep -v Hel ../common/test_2.txt > s21_grep_test_2_v
if (diff -s grep_test_2_v s21_grep_test_2_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_v s21_grep_test_2_v
echo -----------------------------------------------------TEST_V_FLAG_3
grep -v A ../common/test_3.txt > grep_test_3_v
./s21_grep -v A ../common/test_3.txt > s21_grep_test_3_v
if (diff -s grep_test_3_v s21_grep_test_3_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_v s21_grep_test_3_v
echo -----------------------------------------------------TEST_C_FLAG_1
grep -c twenty ../common/test_4.txt > grep_test_1_c
./s21_grep -c twenty ../common/test_4.txt > s21_grep_test_1_c
if (diff -s grep_test_1_c s21_grep_test_1_c); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_c s21_grep_test_1_c
echo -----------------------------------------------------TEST_C_FLAG_2
grep -c Hello ../common/test_2.txt > grep_test_2_c
./s21_grep -c Hello ../common/test_2.txt > s21_grep_test_2_c
if (diff -s grep_test_2_c s21_grep_test_2_c); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_c s21_grep_test_2_c
echo -----------------------------------------------------TEST_C_FLAG_3
grep -c A ../common/test_3.txt > grep_test_3_c
./s21_grep -c A ../common/test_3.txt > s21_grep_test_3_c
if (diff -s grep_test_3_c s21_grep_test_3_c); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_c s21_grep_test_3_c
echo -----------------------------------------------------TEST_L_FLAG_1
grep -l twenty ../common/test_4.txt > grep_test_1_l
./s21_grep -l twenty ../common/test_4.txt > s21_grep_test_1_l
if (diff -s grep_test_1_l s21_grep_test_1_l); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_l s21_grep_test_1_l
echo -----------------------------------------------------TEST_L_FLAG_2
grep -l Hello ../common/test_2.txt > grep_test_2_l
./s21_grep -l Hello ../common/test_2.txt > s21_grep_test_2_l
if (diff -s grep_test_2_l s21_grep_test_2_l); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_l s21_grep_test_2_l
echo -----------------------------------------------------TEST_L_FLAG_3
grep -l A ../common/test_3.txt > grep_test_3_l
./s21_grep -l A ../common/test_3.txt > s21_grep_test_3_l
if (diff -s grep_test_3_l s21_grep_test_3_l); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_l s21_grep_test_3_l
echo -----------------------------------------------------TEST_N_FLAG_1
grep -n twenty ../common/test_4.txt > grep_test_1_n
./s21_grep -n twenty ../common/test_4.txt > s21_grep_test_1_n
if (diff -s grep_test_1_n s21_grep_test_1_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_n s21_grep_test_1_n
echo -----------------------------------------------------TEST_N_FLAG_2
grep -n Hello ../common/test_2.txt > grep_test_2_n
./s21_grep -n Hello ../common/test_2.txt > s21_grep_test_2_n
if (diff -s grep_test_2_n s21_grep_test_2_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_n s21_grep_test_2_n
echo -----------------------------------------------------TEST_N_FLAG_3
grep -n A ../common/test_3.txt > grep_test_3_n
./s21_grep -n A ../common/test_3.txt > s21_grep_test_3_n
if (diff -s grep_test_3_n s21_grep_test_3_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_n s21_grep_test_3_n
echo -----------------------------------------------------TEST_H_FLAG_1
grep -h one ../common/test_4.txt > grep_test_1_h
./s21_grep -h one ../common/test_4.txt > s21_grep_test_1_h
if (diff -s grep_test_1_h s21_grep_test_1_h); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_h s21_grep_test_1_h
echo -----------------------------------------------------TEST_H_FLAG_2
grep -h Hello ../common/test_2.txt > grep_test_2_h
./s21_grep -h Hello ../common/test_2.txt > s21_grep_test_2_h
if (diff -s grep_test_2_h s21_grep_test_2_h); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_h s21_grep_test_2_h
echo -----------------------------------------------------TEST_H_FLAG_3
grep -h A ../common/test_3.txt > grep_test_3_h
./s21_grep -h A ../common/test_3.txt > s21_grep_test_3_h
if (diff -s grep_test_3_h s21_grep_test_3_h); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_h s21_grep_test_3_h
echo -----------------------------------------------------TEST_S_FLAG_1
grep -s one ../common/test_4.txt > grep_test_1_s
./s21_grep -s one ../common/test_4.txt > s21_grep_test_1_s
if (diff -s grep_test_1_s s21_grep_test_1_s); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_s s21_grep_test_1_s
echo -----------------------------------------------------TEST_S_FLAG_2
grep -s Hello ../common/test_2.txt > grep_test_2_s
./s21_grep -s Hello ../common/test_2.txt > s21_grep_test_2_s
if (diff -s grep_test_2_s s21_grep_test_2_s); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_s s21_grep_test_2_s
echo -----------------------------------------------------TEST_O_FLAG_1
grep -o one ../common/test_4.txt > grep_test_1_o
./s21_grep -o one ../common/test_4.txt > s21_grep_test_1_o
if (diff -s grep_test_1_o s21_grep_test_1_o); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_1_o s21_grep_test_1_o
echo -----------------------------------------------------TEST_O_FLAG_2
grep -o Hello ../common/test_2.txt > grep_test_2_o
./s21_grep -o Hello ../common/test_2.txt > s21_grep_test_2_o
if (diff -s grep_test_2_o s21_grep_test_2_o); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_2_o s21_grep_test_2_o
echo -----------------------------------------------------TEST_O_FLAG_3
grep -o A ../common/test_3.txt > grep_test_3_o
./s21_grep -o A ../common/test_3.txt > s21_grep_test_3_o
if (diff -s grep_test_3_o s21_grep_test_3_o); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f grep_test_3_o s21_grep_test_3_o
