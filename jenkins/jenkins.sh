#!/bin/bash

# run netdata on localhost:8080
docker run \
  --user root \
  --rm \
  --detach \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume /home/nixon89/docker-data/jenkins:/var/jenkins_home \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  jenkinsci/blueocean