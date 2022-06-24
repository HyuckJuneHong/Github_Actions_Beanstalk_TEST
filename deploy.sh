#!/bin/bash

#TIMESTAMP 변수 생성 후 현재 시각으로 초기화
TIMESTAMP=`date +%s`

#echo : 문자열이나 변수를 출력
echo ">>> server will run!!!!"

DOCKER_ID=rhqmf92
DOCKER_TAG=latest-${TIMESTAMP}
DOCKER_IMAGE=rhqmf92/docker-hub-test:${DOCKER_TAG}

echo qnf031031! |  sudo -S docker login -u ${DOCKER_ID} -p qnf031031!
echo "docker login completed"

sudo docker build -t ${DOCKER_IMAGE} .
echo "docker build completed"

sudo docker push ${DOCKER_IMAGE}
echo "docker push completed"

#ssh : 암호 통신을 이용하여 원격 호스트에 연결.
echo ">>>ssh to server..."
ssh ssh -p 22 ubuntu@172-31-43-145 "sudo sh ./nonstop.sh ${DOCKER_IMAGE}"