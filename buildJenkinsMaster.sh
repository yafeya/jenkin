#!/bin/sh
docker build -f Dockerfile_Jenkins -t docker-local.demo/my-jenkins-master --no-cache .

docker build -f Dockerfile_Sonarqube -t docker-local.demo/my-sonarqube --no-cache .
