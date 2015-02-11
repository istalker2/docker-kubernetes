#!/bin/bash

#  File with pod is /tmp/pod.json
# $1 new or update

if [ "$1" == "True" ]; then
  #new POD
  echo "Creating a new POD" >> /tmp/murano-kube.log
  /opt/bin/kubectl create -f /tmp/pod.json >> /tmp/murano-kube.log
else
  echo "Updating a POD" >> /tmp/murano-kube.log
  /opt/bin/kubectl update -f /tmp/pod.json >> /tmp/murano-kube.log
fi