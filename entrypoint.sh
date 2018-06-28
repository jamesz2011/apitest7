#!/bin/sh

nohup java -Duser.home=/var/lib/jenkins -jar /usr/share/jenkins/jenkins.war --httpPort=8080 >> /var/log/jenkins.log &
sh /usr/local/bin/dind dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375
