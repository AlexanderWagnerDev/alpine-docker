FROM alpine:v3.22

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update \
    && apk upgrade \
    && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
