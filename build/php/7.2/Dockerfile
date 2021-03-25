FROM php:7.2-fpm-buster
LABEL Author="Eward"
LABEL Version="fpm-7.2"
LABEL Description="PHP FPM 7.2. All extensions."

#设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./run.sh /opt/run.sh
COPY ./sources.list /etc/apt/sources.list
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN apt-get update -y --fix-missing && apt-get upgrade -y && apt-get -y install --no-install-recommends \
    supervisor procps && \
    chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions @composer redis mysqli pdo_mysql swoole bcmath apcu amqp intl exif gettext pcntl sysvsem \
    sysvshm sysvmsg rdkafka protobuf gd soap sockets xmlrpc zip bz2 xhprof opcache mcrypt ldap imap && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && ln -s $(composer config --global home) /root/composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ && \
    chmod a+u /opt/run.sh
