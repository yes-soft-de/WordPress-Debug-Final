#!/bin/bash

if [ -e phpcbf.phar] 
then
    rm phpcs.phar
    rm phpcbf.phar
else         
    echo "CodeSniffer is Not Installed!"
if