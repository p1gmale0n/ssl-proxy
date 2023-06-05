FROM alpine:latest

RUN apk add --no-cache squid bash

COPY squid /etc/squid

EXPOSE 3128/tcp
EXPOSE 3129/tcp

CMD ["squid", "-N"]