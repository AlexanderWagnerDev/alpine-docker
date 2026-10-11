FROM alpine:latest

RUN apk update && \
    apk upgrade -aU && \
    rm -rf /var/cache/apk/* && \
    sed -i 's|dl-cdn.alpinelinux.org|mirror.awdev.cc|g' /etc/apk/repositories

CMD ["/bin/sh"]
