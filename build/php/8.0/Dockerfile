FROM php:8.0-fpm-buster
LABEL Author="Eward"
LABEL Version="fpm-8.0"
LABEL Description="PHP FPM 8.0. All extensions."

#设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./run.sh /opt/run.sh
#COPY ./sources.list /etc/apt/sources.list
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
# apt-get update -y --fix-missing && apt-get upgrade -y && apt-get -y install --no-install-recommends \
# supervisor procps &&
RUN install-php-extensions @composer redis mysqli pdo_mysql swoole bcmath apcu amqp\
    intl exif gettext pcntl sysvsem sysvshm sysvmsg mongodb gd sockets xmlrpc zip bz2\
    opcache mcrypt && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && ln -s $(composer config --global home) /root/composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ && \
    chmod a+u /opt/run.sh
