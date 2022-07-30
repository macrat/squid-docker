FROM alpine:latest

LABEL description="Docker image for Squid HTTP proxy"
LABEL maintainer="m@crat.jp"

RUN apk add --no-cache squid && \
    install -d -o squid -g squid /etc/squid/conf.d /var/run/squid && \
    cp /etc/squid/squid.conf /etc/squid/conf.d/00-default.conf && \
    echo 'include /etc/squid/conf.d/*.conf' > /etc/squid/squid.conf

COPY squid.conf /etc/squid/conf.d/01-docker.conf

EXPOSE 3128
USER squid

HEALTHCHECK CMD wget --spider -q http://localhost:3128

ENTRYPOINT ["/usr/sbin/squid"]
CMD ["--foreground", "-d", "1"]
