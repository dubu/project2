#!/bin/bash

#ssh -i ~/.ssh/id_open 567233e54423f8a8ca001d3c@sun-dubu.cloudsc.kr
#/var/lib/openshift/567233e54423f8a8ca001d3c/egovframework/webapps

USER=567233e54423f8a8ca001d3c
SERVER=sun-dubu.cloudsc.kr
WEB_HOME=/var/lib/openshift/567233e54423f8a8ca001d3c/egovframework/webapps

#git pull
#mvn clean package -Dmaven.test.skip=true

SSH="ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_open"

scp -i ~/.ssh/id_open target/springboot-shop.war $USER@$SERVER:$WEB_HOME/ROOT.war

ssh -i ~/.ssh/id_open $USER@$SERVER gear stop
ssh -i ~/.ssh/id_open $USER@$SERVER gear start
