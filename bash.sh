#!/usr/bin/env bash
docker build -t docker_php72 build/php/7.2
#docker stop lnmp
#docker rm lnmp
#docker run --name lnmp -it php:7.4 bash