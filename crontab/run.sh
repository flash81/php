#!/bin/bash
touch /cron.log
tail -F /cron.log &

echo "${CRON} >> /cron.log 2>&1" >> /etc/crontab
crontab  /etc/crontab
echo "=> Running cron job"
exec cron -f