FROM alpine:3.12

RUN apk update && apk upgrade \
    && apk add --no-cache ca-certificates wget \
    && update-ca-certificates

RUN wget https://github.com/segmentio/chamber/releases/download/v2.9.1-ci2/chamber-v2.9.1-ci2-linux-amd64 -O /bin/chamber \
    && chmod +x /bin/chamber
