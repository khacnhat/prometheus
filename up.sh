#!/bin/bash
set -e

docker run -d -p 9090:9090 \
  -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus \
  -config.file=/etc/prometheus/prometheus.yml