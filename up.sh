#!/bin/bash
set -e

docker run -d -p 9090:9090 \
  --name khacnhat-prometheus \
  -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
  khacnhat/prometheus \
  --config.file=/app/prometheus.yml
