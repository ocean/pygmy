# Based on https://github.com/andyshinn/docker-dnsmasq/tree/2.83
FROM alpine:3.13
RUN apk --no-cache add dnsmasq-dnssec
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
