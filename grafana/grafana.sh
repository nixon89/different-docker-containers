#!/bin/bash

# run grafana on 127.0.0.1:3000

docker run \
  --rm \
  --detach \
  --publish 3000:3000 \
  --name grafana \
  --env-file configuration.env \
  grafana/grafana:6.0.1
