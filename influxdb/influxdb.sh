#!/bin/bash

# run influxdb on localhost:8086
# https://hub.docker.com/_/influxdb/

docker run \
  --rm \
  --detach \
  --publish 8086:8086 \
  --env-file configuration.env \
  --publish 8083:8083 \
  --name influxdb \
  influxdb