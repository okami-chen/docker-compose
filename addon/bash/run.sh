#!/usr/bin/env bash
echo "alias ll='ls -lh'" >> /root/.bashrc
env >> /etc/default/locale
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
/usr/local/sbin/php-fpm -c /usr/local/etc/php-fpm.conf
