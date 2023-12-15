#!/bin/sh

set -e

# start syslog so postfix writes logs
syslog-ng

# start postfix
cd /etc/postfix
postmap sasl_passwd
/usr/sbin/postfix start

# print postfix logs to stdout
tail -f /var/log/mail.log
