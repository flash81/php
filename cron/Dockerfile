FROM php:7.0
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libssl-dev \
        cron \
    && docker-php-ext-install pdo_mysql mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) bcmath \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && pecl install mongodb \
RUN echo "extension=mongodb.so" >> `/usr/local/etc/php/conf.d/docker-php-ext-mongodb.ini`
ADD run.sh /run.sh
CMD ["run.sh"]