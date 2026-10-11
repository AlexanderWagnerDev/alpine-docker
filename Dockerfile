FROM alpine:3.23

RUN apk update && \
    apk upgrade && \
    rm -rf /var/cache/apk/* && \
    sed -i 's|dl-cdn.alpinelinux.org|mirror.awdev.cc|g' /etc/apk/repositories

CMD ["/bin/sh"]
