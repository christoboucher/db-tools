#!/bin/bash

#need to be logged into docker to push to fermionms

docker build -t christoboucher/db-tools -f docker/Dockerfile .
docker push christoboucher/db-tools
