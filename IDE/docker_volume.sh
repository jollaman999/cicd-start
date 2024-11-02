#!/bin/bash

# 볼륨 새성 (volume name : cloud-cicd-src)
docker volume create  \
--opt device="./cicd/cloud-cicd/src" \
--opt o=bind --opt type=none cloud-cicd-src

docker volume create  \
--opt device="./cicd/cloud-cicd/vscode" \
--opt o=bind --opt type=none vscode

docker volume create  \
--opt device="./cicd/cloud-cicd/jenkins" \
--opt o=bind --opt type=none jenkins-home

# 볼륨 생성 확인
docker volume ls
