FROM alpine:latest

MAINTAINER Théo Brigitte (theo.brigitte@gmail.com)

RUN apk add --no-cache \
    apache2-utils \
    bash \
    bind-tools \
    busybox-extras \
    curl \
    conntrack-tools \
    coreutils \
    ethtool \
    gawk \
    git \
    grep \
    iperf3 \
    iproute2 \
    iputils \
    jq \
    lftp \
    mtr \
    netcat-openbsd \
    net-tools \
    nginx \
    nmap \
    openssh-client \
    openssl \
    procps \
    rsync \
    sed \
    socat \
    tcpdump \
    wget \
    vim

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
