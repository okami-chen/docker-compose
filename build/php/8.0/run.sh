#!/usr/bin/env bash
env >> /etc/default/locale
echo "alias ll='ls -lh'" >> /root/.bashrc
sleep 1s
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
sleep 1s
php-fpm -g 'daemon off'