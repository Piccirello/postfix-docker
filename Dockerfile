FROM alpine:3

RUN apk add --no-cache postfix postfix-pcre ca-certificates syslog-ng && \
    echo -e '#!/bin/sh\nset -e\nsyslog-ng && cd /etc/postfix && postmap sasl_passwd && /usr/sbin/postfix start && tail -f /var/log/mail.log' > /entrypoint.sh \
    && chmod 555 /entrypoint.sh

CMD ["sh", "-c", "/entrypoint.sh"]
