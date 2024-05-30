FROM alpine:3

RUN apk add --no-cache postfix postfix-pcre ca-certificates syslog-ng

COPY entrypoint.sh /entrypoint.sh
RUN chmod 555 /entrypoint.sh

CMD ["/entrypoint.sh"]
