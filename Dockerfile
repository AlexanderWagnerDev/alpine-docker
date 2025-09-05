FROM alpine:3.20

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update \
    && apk upgrade \
    && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
