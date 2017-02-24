FROM php:alpine

MAINTAINER Benjamin Lazarecki "benjamin.lazarecki@gmail.com"

ARG PHP_CS_FIXER_VERSION=2.1.0

RUN curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v$PHP_CS_FIXER_VERSION/php-cs-fixer.phar -o php-cs-fixer \
    && chmod +x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

WORKDIR "/srv"

CMD ["/usr/local/bin/php-cs-fixer", "fix"]
