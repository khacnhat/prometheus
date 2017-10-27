FROM  prom/prometheus
LABEL maintainer=jon@jaggersoft.com

COPY . /app
RUN mv /app/prometheus.yml /etc/prometheus/
CMD [ "-config.file=/etc/prometheus/prometheus.yml" ]
