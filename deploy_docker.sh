#!/bin/bash

APP_NAME=rigel/service
APP_DIR=/home
REVISION=0.3
CONTAINER_NAME=service
REGISTRY=idock.daumkakao.io

git pull
mvn clean package -Dmaven.test.skip=true
scp target/springboot-shop.war deploy@d06.s1.krane.9rum.cc:/home/deploy

APP_SERVERS=(
  "deploy@d06.s1.krane.9rum.cc"
)

#GIT_WORK_TREE=$APP_DIR git checkout -f

SSH="ssh -o StrictHostKeyChecking=no"
for SERVER in ${APP_SERVERS[@]}
do
  # Delete all containers
  # $SSH $SERVER docker rm $(docker ps -a -q)
  # Delete all images
  # $SSH $SERVER docker rmi $(docker images -q)

  $SSH $SERVER docker cp springboot-shop.war $CONTAINER_NAME:/home/nobody/tomcat/apache-tomcat-8.0.28/webapps/ROOT.war
  $SSH $SERVER docker exec $CONTAINER_NAME /home/nobody/tomcat/apache-tomcat-8.0.28/bin/shutdown.sh
  $SSH $SERVER docker exec $CONTAINER_NAME /home/nobody/tomcat/apache-tomcat-8.0.28/bin/startup.sh
done
