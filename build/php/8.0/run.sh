#!/usr/bin/env bash
env >> /etc/default/locale
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
/usr/local/bin/docker-php-entrypoint