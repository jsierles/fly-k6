FROM debian:buster-slim

RUN apt-get update && apt-get install -y curl jq
RUN curl -L https://github.com/grafana/k6/releases/download/v0.33.0/k6-v0.33.0-linux-amd64.tar.gz > k6.tgz && \
    tar xvzf k6.tgz && \
    mv k6*/k6 /bin && \
    rm *tgz

COPY . .
CMD tail -f /dev/null
