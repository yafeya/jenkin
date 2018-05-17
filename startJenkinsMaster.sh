#!/bin/sh
. ./stopJenkinsMaster.sh
if ! [ -e swarm-client-3.7.jar ]
then
   echo "swarm-client-3.7.jar doesn't exist, downloading...."
   wget https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/3.7/swarm-client-3.7.jar
else
  echo "swarm-client-3.7.jar has already existed"
fi


docker-compose up -d #execute the docker-compose.yml
echo "starting swarm-client"
nohup java -jar swarm-client-3.7.jar -master http://0.0.0.0:8080 -name jenkins-swarm-slave-1  &

