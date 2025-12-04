FROM alpine:3.23

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update && \
    apk upgrade && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
