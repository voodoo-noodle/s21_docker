#!/bin/bash

#service nginx start
gcc server.c -o server -lfcgi
spawn-fcgi -p 8080 ./server
service nginx start
#nginx -s reload
tail -f /dev/null