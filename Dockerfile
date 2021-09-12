FROM debian:stretch

RUN set -ex \
    && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
               build-essential \
               cdbs \
               ca-certificates \
               devscripts \
               equivs \
               fakeroot \
               jq \
               git \
               ssh \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/*
