FROM prom/prometheus
MAINTAINER Jon Jagger <jon@jaggersoft.com>

COPY . /app
RUN mv /app/prometheus.yml /etc/prometheus/
