#!/bin/bash
if [ -e xdebug_enabled ] 
then
    echo "XDebug is Installed!"
else         
    #create holders
    echo '' > php.ini-development
    echo '' > php.ini-development.ini
    echo '' > php.ini-production
    echo '' > docker-php-ext-gd.ini

    #Save Instace for Disabling XDebug
    cat /usr/local/etc/php/php.ini-development > php.ini-development
    cat /usr/local/etc/php/php.ini-development.ini > php.ini-development.ini
    cat /usr/local/etc/php/php.ini-production > php.ini-production
    cat /usr/local/etc/php/conf.d/docker-php-ext-gd.ini > docker-php-ext-gd.ini


    # and Activate Remote Debug
    echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_host = 10.0.75.1' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/php.ini-development
    echo 'xdebug.remote_connect_back = true' >> /usr/local/etc/php/php.ini-development

    echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so'  >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_host =  10.0.75.1' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/php.ini-development.ini
    echo 'xdebug.remote_connect_back = true' >> /usr/local/etc/php/php.ini-development.ini

    echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_autostart = 1'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_enable = 1'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_handler = dbgp'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_host =  10.0.75.1'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_log = /tmp/xdebug_remote.log'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_mode = req'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_port = 9000'>> /usr/local/etc/php/php.ini-production
    echo 'xdebug.remote_connect_back = true' >> /usr/local/etc/php/php.ini-production

    echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_host =  10.0.75.1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
    echo 'xdebug.remote_connect_back = true' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini

    echo 'enabled' > xdebug_enabled

    service apache2 restart

fi

