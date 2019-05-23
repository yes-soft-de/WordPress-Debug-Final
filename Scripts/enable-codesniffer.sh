#!/bin/bash
if [[ -e phpcs.phar && -e phpcbf.phar]];
then 
    echo 'Code Sniffer is Enabled'
else 
    # Install PHP Code Sniffer
    curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar;
    curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar;


    if [[ -e phpcs.phar && -e phpcbf.phar]];
    then 
        echo 'Code Sniffer is Enabled'
    else 
        echo 'Error Downloading Code Sniffer :-('
    fi
fi
