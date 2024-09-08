#!/bin/bash

docker build -t funnyimage:0.1 .
docker run -d -p 80:81 --name funnycontainer funnyimage

