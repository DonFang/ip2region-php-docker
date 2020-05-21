# Version 1.0

# Base images 基础镜像
FROM daocloud.io/library/php:7.4.4-fpm-alpine

#MAINTAINER 维护者信息
MAINTAINER Don.Fang

COPY ip2region /usr/src/php/ext/ip2region

#RUN 执行以下命令 
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
   && docker-php-ext-install ip2region \
   && sed -i '1aip2region.db_file=/ip2region.db' /usr/local/etc/php/conf.d/docker-php-ext-ip2region.ini \
   && rm -rf /tmp/* \
   && rm -rf /usr/src/php
   