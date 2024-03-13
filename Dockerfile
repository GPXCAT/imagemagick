FROM ubuntu as base

RUN apt-get update \
    && apt-get install -y imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 允許處理PDF
RUN sed -i '/PDF/d' /etc/ImageMagick-6/policy.xml

ENTRYPOINT ["/usr/bin/convert"]