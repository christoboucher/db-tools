#!/bin/bash

#need to be logged into docker to push to fermionms

docker build -t christoboucher/ubuntu-backup-tools -f docker/Dockerfile .
docker push christoboucher/ubuntu-backup-tools
