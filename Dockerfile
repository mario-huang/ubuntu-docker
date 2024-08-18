FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y tzdata iputils-ping curl wget micro
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
RUN apt clean && rm -rf /var/lib/apt/lists/*
