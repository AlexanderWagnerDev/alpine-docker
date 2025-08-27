FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
