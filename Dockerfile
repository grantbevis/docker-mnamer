FROM alpine:latest
MAINTAINER b3vis
ARG MNAMER_VERSION=v2.2.0
RUN apk upgrade --no-cache \
    && apk add --no-cache \
    python3 \
    && pip3 install --upgrade pip \
    && pip3 install --upgrade mnamer==${MNAMER_VERSION}
CMD /usr/bin/mnamer