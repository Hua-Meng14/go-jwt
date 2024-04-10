FROM golang:1.19.0

WORKDIR /usr/src/app

RUN apk update \
        && apk upgrade \
        && apk add --no-cache \
        ca-certificates \
        && update-ca-certificates 2>/dev/null || true