# About ip2region-php-docker
This is a docker example based on the ip2region PHP extension (php:7.4.4-fpm-alpine)

You can use my compiled docker image directly through AliCloud image repository:
#### Public Network 

    $ sudo docker pull registry.cn-hangzhou.aliyuncs.com/donfang/php:ip2region

#### AliCloud VPC Network 
    $ sudo docker pull registry-vpc.cn-hangzhou.aliyuncs.com/donfang/php:ip2region

#### AliCloud Classic Network
    $ sudo docker pull registry-internal.cn-hangzhou.aliyuncs.com/donfang/php

# Dockerfile
It's based on php:7.4.4-fpm-alpine and [ip2region](https://github.com/lionsoul2014/ip2region.git)

# Sample (Nginx+PHP)

[docker-compose.yml](docker-compose.yml) is a sample file for you to try.  You can run it through Docker Compose:

    $ docker-compose up -d

Then open your browser and goto http://localhost:8080/?ip=127.0.0.1
