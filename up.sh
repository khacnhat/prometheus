#!/bin/bash
set -e

docker run -d -p 9090:9090 \
  --name cyber-dojo-prometheus \
  -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus \
  -config.file=/etc/prometheus/prometheus.yml
