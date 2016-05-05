FROM alpine:3.3
MAINTAINER alex.mavrogiannis@docker.com

ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

RUN apk update && apk add dnsmasq ca-certificates

#RUN echo -e "ENABLED=1\nIGNORE_RESOLVCONF=yes" > /etc/default/dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf

CMD ["dnsmasq", "--no-daemon"]
