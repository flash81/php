FROM 2684498887/php:7.0
RUN apt-get install -y cron
COPY cron-jobs /var/spool/cron/root
CMD ["cron", "-f"]