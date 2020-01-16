FROM ubuntu:18.04

ARG OPA_VERSION=0.16.1
RUN curl -LO https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64 \
    && mv opa_linux_amd64 /usr/local/bin/opa \
    && chmod +x /usr/local/bin/opa
