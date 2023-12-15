#!/bin/sh

set -e

handler() {
    /usr/sbin/postfix stop
    exit
}

trap handler INT
trap handler TERM

# start syslog so postfix writes logs
syslog-ng

# start postfix
cd /etc/postfix
/usr/sbin/postfix start

# print postfix logs to stdout
# we send this to the background so the script's traps run
tail -f /var/log/mail.log &
wait
