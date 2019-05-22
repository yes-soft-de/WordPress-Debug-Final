FROM wordpress:latest

# Install XDebug
RUN pecl install xdebug

# Add the Dependency to Them
RUN echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini-development
RUN echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini-development.ini
RUN echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini-production
RUN echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/conf.d/docker-php-ext-gd.ini
RUN service apache2 restart