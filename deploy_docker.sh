#!/bin/bash


#ssh -i ~/.ssh/id_open 567233e54423f8a8ca001d3c@sun-dubu.cloudsc.kr
#/var/lib/openshift/567233e54423f8a8ca001d3c/egovframework/webapps

USER=567233e54423f8a8ca001d3c
SERVER=sun-dubu.cloudsc.kr
WEB_HOME=/var/lib/openshift/567233e54423f8a8ca001d3c/egovframework/webapps

git pull
mvn clean package

SSH="ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_open"
SCP="scp -i ~/.ssh/id_open"

$SCP target/springboot-shop.war $USER@$SERVER:$WEB_HOME/ROOT.war
$SSH $USER@$SERVER gear stop
$SSH $USER@$SERVER gear start
