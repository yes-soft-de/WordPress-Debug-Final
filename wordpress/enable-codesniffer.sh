#!/bin/bash
if [[ -e phpcs.phar  &&  -e phpcbf.phar ]];
then 
    echo 'Code Sniffer is Enabled'
else 
    echo 'Code Sniffer is Not'
    # Install PHP Code Sniffer
    curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar;
    curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar;
    echo 'Code Sniffer is Installed If Your connection was good :P'
fi
