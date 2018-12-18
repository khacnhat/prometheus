FROM prom/prometheus
LABEL maintainer=jon@jaggersoft.com

ARG HOME=/app
COPY . ${HOME}

RUN cp ${HOME}/prometheus.yml /etc/prometheus/
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
