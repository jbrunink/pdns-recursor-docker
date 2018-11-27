FROM alpine:edge

ENV PDNS_RECURSOR_VERSION 4.1.8-r0

RUN apk --update add --no-cache pdns-recursor==${PDNS_RECURSOR_VERSION}

COPY recursor.conf strip.lua /etc/pdns/

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/pdns_recursor", "--daemon=no"]
