FROM alpine:latest

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update && \
    apk upgrade -aU && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
