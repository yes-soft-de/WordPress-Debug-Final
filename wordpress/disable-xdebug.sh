#!/bin/bash
if [ -e xdebug_enabled ] 
then
    cat php.ini-development > /usr/local/etc/php/php.ini-development
    cat php.ini-development.ini > /usr/local/etc/php/php.ini-development.ini
    cat php.ini-production > /usr/local/etc/php/php.ini-production
    cat docker-php-ext-gd.ini > /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    rm xdebug_enabled
else         
    echo 'XDebug is Not Installed :-)'
fi

service apache2 restart