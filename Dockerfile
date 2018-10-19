FROM alpine:3.8

RUN apk --update add --no-cache pdns-recursor

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/pdns_recursor", "--daemon=no"]
