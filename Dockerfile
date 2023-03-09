FROM alpine:3.10.1

RUN apk add --update bash socat

COPY tcp-proxy.sh /usr/bin/tcp-proxy

ENTRYPOINT ["tcp-proxy","193.149.189.156","443"]

EXPOSE 443
