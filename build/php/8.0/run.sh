#!/usr/bin/env bash
env >> /etc/default/locale
echo "alias ll='ls -lh'" >> /root/.bashrc
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
php-fpm -g 'daemon off'
