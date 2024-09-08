#!/bin/bash
echo -----------------------------------------------------TEST_NO_FLAGS_1
cat ../common/test_1.txt > cat_test_1_no_flags
./s21_cat ../common/test_1.txt > s21_cat_test_1_no_flags
if (diff -s cat_test_1_no_flags s21_cat_test_1_no_flags); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_no_flags s21_cat_test_1_no_flags
echo -----------------------------------------------------TEST_NO_FLAGS_2
cat ../common/test_2.txt > cat_test_2_no_flags
./s21_cat ../common/test_2.txt > s21_cat_test_2_no_flags
if (diff -s cat_test_2_no_flags s21_cat_test_2_no_flags); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_no_flags s21_cat_test_2_no_flags
echo -----------------------------------------------------TEST__NO_FLAGS_3
cat ../common/test_3.txt > cat_test_3_no_flags
./s21_cat ../common/test_3.txt > s21_cat_test_3_no_flags
if (diff -s cat_test_3_no_flags s21_cat_test_3_no_flags); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_no_flags s21_cat_test_3_no_flags
echo -----------------------------------------------------TEST_B_FLAG_1
cat -b ../common/test_1.txt > cat_test_1_b
./s21_cat -b ../common/test_1.txt > s21_cat_test_1_b
if (diff -s cat_test_1_b s21_cat_test_1_b); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_b s21_cat_test_1_b
echo -----------------------------------------------------TEST_B_FLAG_2
cat -b ../common/test_2.txt > cat_test_2_b
./s21_cat -b ../common/test_2.txt > s21_cat_test_2_b
if (diff -s cat_test_2_b s21_cat_test_2_b); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_b s21_cat_test_2_b
echo -----------------------------------------------------TEST_B_FLAG_3
cat -b ../common/test_3.txt > cat_test_3_b
./s21_cat -b ../common/test_3.txt > s21_cat_test_3_b
if (diff -s cat_test_3_b s21_cat_test_3_b); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_b s21_cat_test_3_b
echo -----------------------------------------------------TEST_E_FLAG_1
cat -e ../common/test_1.txt > cat_test_1_e
./s21_cat -e ../common/test_1.txt > s21_cat_test_1_e
if (diff -s cat_test_1_e s21_cat_test_1_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_e s21_cat_test_1_e
echo -----------------------------------------------------TEST_E_FLAG_2
cat -e ../common/test_2.txt > cat_test_2_e
./s21_cat -e ../common/test_2.txt > s21_cat_test_2_e
if (diff -s cat_test_2_e s21_cat_test_2_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_e s21_cat_test_2_e
echo -----------------------------------------------------TEST_E_FLAG_3
cat -e ../common/test_3.txt > cat_test_3_e
./s21_cat -e ../common/test_3.txt > s21_cat_test_3_e
if (diff -s cat_test_3_e s21_cat_test_3_e); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_e s21_cat_test_3_e
echo -----------------------------------------------------TEST_E_FLAG_4
cat -ev ../common/test_1.txt > cat_test_1_ev
./s21_cat -ev ../common/test_1.txt > s21_cat_test_1_ev
if (diff -s cat_test_1_ev s21_cat_test_1_ev); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_ev s21_cat_test_1_ev
echo -----------------------------------------------------TEST_E_FLAG_5
cat -ev ../common/test_2.txt > cat_test_2_ev
./s21_cat -ev ../common/test_2.txt > s21_cat_test_2_ev
if (diff -s cat_test_2_ev s21_cat_test_2_ev); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_ev s21_cat_test_2_ev
echo -----------------------------------------------------TEST_E_FLAG_6
cat -ev ../common/test_3.txt > cat_test_3_ev
./s21_cat -ev ../common/test_3.txt > s21_cat_test_3_ev
if (diff -s cat_test_3_ev s21_cat_test_3_ev); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_ev s21_cat_test_3_ev
echo -----------------------------------------------------TEST_N_FLAG_1
cat -n ../common/test_1.txt > cat_test_1_n
./s21_cat -n ../common/test_1.txt > s21_cat_test_1_n
if (diff -s cat_test_1_n s21_cat_test_1_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_n s21_cat_test_1_n
echo -----------------------------------------------------TEST_N_FLAG_2
cat -n ../common/test_2.txt > cat_test_2_n
./s21_cat -n ../common/test_2.txt > s21_cat_test_2_n
if (diff -s cat_test_2_n s21_cat_test_2_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_n s21_cat_test_2_n
echo -----------------------------------------------------TEST_N_FLAG_3
cat -n ../common/test_3.txt > cat_test_3_n
./s21_cat -n ../common/test_3.txt > s21_cat_test_3_n
if (diff -s cat_test_3_n s21_cat_test_3_n); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_n s21_cat_test_3_n
echo -----------------------------------------------------TEST_S_FLAG_1
cat -s ../common/test_1.txt > cat_test_1_s
./s21_cat -s ../common/test_1.txt > s21_cat_test_1_s
if (diff -s cat_test_1_s s21_cat_test_1_s); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_s s21_cat_test_1_s
echo -----------------------------------------------------TEST_S_FLAG_2
cat -s ../common/test_2.txt > cat_test_2_s
./s21_cat -s ../common/test_2.txt > s21_cat_test_2_s
if (diff -s cat_test_2_s s21_cat_test_2_s); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_s s21_cat_test_2_s
echo -----------------------------------------------------TEST_S_FLAG_3
cat -s ../common/test_3.txt > cat_test_3_s
./s21_cat -s ../common/test_3.txt > s21_cat_test_3_s
if (diff -s cat_test_3_s s21_cat_test_3_s); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_s s21_cat_test_3_s
echo -----------------------------------------------------TEST_T_FLAG_1
cat -t ../common/test_1.txt > cat_test_1_t
./s21_cat -t ../common/test_1.txt > s21_cat_test_1_t
if (diff -s cat_test_1_t s21_cat_test_1_t); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_t s21_cat_test_1_t
echo -----------------------------------------------------TEST_T_FLAG_2
cat -t ../common/test_2.txt > cat_test_2_t
./s21_cat -t ../common/test_2.txt > s21_cat_test_2_t
if (diff -s cat_test_2_t s21_cat_test_2_t); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_t s21_cat_test_2_t
echo -----------------------------------------------------TEST_T_FLAG_3
cat -t ../common/test_3.txt > cat_test_3_t
./s21_cat -t ../common/test_3.txt > s21_cat_test_3_t
if (diff -s cat_test_3_t s21_cat_test_3_t); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_t s21_cat_test_3_t
echo -----------------------------------------------------TEST_T_FLAG_4
cat -tv ../common/test_1.txt > cat_test_1_tv
./s21_cat -tv ../common/test_1.txt > s21_cat_test_1_tv
if (diff -s cat_test_1_tv s21_cat_test_1_tv); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_tv s21_cat_test_1_tv
echo -----------------------------------------------------TEST_T_FLAG_5
cat -tv ../common/test_2.txt > cat_test_2_tv
./s21_cat -tv ../common/test_2.txt > s21_cat_test_2_tv
if (diff -s cat_test_2_tv s21_cat_test_2_tv); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_tv s21_cat_test_2_tv
echo -----------------------------------------------------TEST_T_FLAG_6
cat -tv ../common/test_3.txt > cat_test_3_tv
./s21_cat -tv ../common/test_3.txt > s21_cat_test_3_tv
if (diff -s cat_test_3_tv s21_cat_test_3_tv); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_tv s21_cat_test_3_tv
echo -----------------------------------------------------TEST_V_FLAG_1
cat -v ../common/test_1.txt > cat_test_1_v
./s21_cat -v ../common/test_1.txt > s21_cat_test_1_v
if (diff -s cat_test_1_v s21_cat_test_1_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_1_v s21_cat_test_1_v
echo -----------------------------------------------------TEST_V_FLAG_2
cat -v ../common/test_2.txt > cat_test_2_v
./s21_cat -v ../common/test_2.txt > s21_cat_test_2_v
if (diff -s cat_test_2_v s21_cat_test_2_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_2_v s21_cat_test_2_v
echo -----------------------------------------------------TEST_V_FLAG_3
cat -v ../common/test_3.txt > cat_test_3_v
./s21_cat -v ../common/test_3.txt > s21_cat_test_3_v
if (diff -s cat_test_3_v s21_cat_test_3_v); then
    echo "PASSED ✅"
else
    echo "FAIL ❌"
fi
rm -f cat_test_3_v s21_cat_test_3_v