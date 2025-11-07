FROM alpine:latest

COPY etc/apk/repositories /etc/apk/repositories

RUN apk update && \
    apk upgrade -aU && \
    apk add merge-usr && \
    merge-usr --dryrun && \
    merge-usr && \
    apk del merge-usr && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
