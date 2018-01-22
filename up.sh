#!/bin/bash
set -e

docker run -d -p 9090:9090 \
  --name cyber-dojo-prometheus \
  -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
  cyberdojo/prometheus \
  --config.file=/app/prometheus.yml
