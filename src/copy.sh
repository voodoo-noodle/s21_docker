#!/bin/bash

scp cat/s21_cat yamchaki@10.10.0.2:/usr/local/bin/
scp grep/s21_grep yamchaki@10.10.0.2:/usr/local/bin/

ssh yamchaki@10.10.0.2 ls -lah /usr/local/bin/
