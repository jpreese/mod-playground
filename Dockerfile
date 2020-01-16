FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y \
    apt-transport-https \
    lsb-release \
    jq \
    software-properties-common \
    dirmngr \
    bash \
    unzip \
    wget \
    git \
    sudo \
    curl

ARG OPA_VERSION=0.16.1
RUN curl -LO https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64 \
    && mv opa_linux_amd64 /usr/local/bin/opa \
    && chmod +x /usr/local/bin/opa
