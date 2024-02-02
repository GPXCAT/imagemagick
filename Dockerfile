FROM ubuntu as base

RUN apt-get update \
    && apt-get install -y imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/convert"]