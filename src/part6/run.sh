#!/bin/bash

gcc main.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
tail -f /dev/null
/bin/bash
