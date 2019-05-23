# Add the Dependency to Them
# and Activate Remote Debug
echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_host = 127.0.0.1' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/php.ini-development
echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/php.ini-development 

echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so'
echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_host = 127.0.0.1' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/php.ini-development.ini
echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/php.ini-development.ini

echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_autostart = 1'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_enable = 1'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_handler = dbgp'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_host = 127.0.0.1'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_log = /tmp/xdebug_remote.log'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_mode = req'>> /usr/local/etc/php/php.ini-production
echo 'xdebug.remote_port = 9000'>> /usr/local/etc/php/php.ini-production

echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_autostart = 1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_enable = 1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_handler = dbgp' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_host = 127.0.0.1' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_log = /tmp/xdebug_remote.log' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_mode = req' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
echo 'xdebug.remote_port = 9000' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
