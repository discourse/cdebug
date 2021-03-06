FROM debian:buster-slim

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    ca-certificates \
    curl \
    gdb \
    iproute2 \
    iputils-ping \
    jq \
    less \
    lsof \
    net-tools \
    netcat-openbsd \
    procps \
    socat \
    strace \
    tcpdump \
    vim \
    wget \
  && DEBIAN_FRONTEND=noninteractive apt-get clean \
  && ( find /var/lib/apt/lists -mindepth 1 -delete || true ) \
  && ( find /var/tmp           -mindepth 1 -delete || true ) \
  && ( find /tmp               -mindepth 1 -delete || true )
