FROM alpine:latest

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash busybox-suid && \
    rm -rf /var/cache/apk/* 

RUN echo "0 */12 * * * apk update && apk upgrade --no-cache" >> /etc/crontabs/root

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
