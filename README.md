# WordPress-Debug-Final
## MySQL:Latest is Installed and active

Complete Customizable WordPress PHP Environment with enable/disable XDebug and CodeSniffer

## Installing 
    -   clone this Repo as a starting point
    -   You can use `docker-compose build --no-cache` 
    -   Then fireup `docker-compose up -d` 

## XDebug
    
    -   start xdebug `docker exec wordpress bash enable-xdebug.sh`
    -   stop xdebug `docker exec wordpress bash disable-xdebug.sh`

## CodeSniffer

    -   start CodeSniffer `docker exec wordpress bash enable-codesniffer.sh`
    -   stop CodeSniffer `docker exec wordpress bash disable-codesniffer.sh`

## Using CodeSniffer
    -   use the command `docker exec -it wordpress /bin/bash` and use the `php phpcs <filename.php>`

## Using XDebug
    -   use the config in `.vscode/launch.json` to match the fallowing 

        `{
            "version": "0.2.0",
            "configurations": [
                {
                    "type": "chrome",
                    "request": "launch",
                    "name": "Listen to XDebug",
                    "url": "http://localhost:8080",
                    "webRoot": "${workspaceFolder}/wordpress"
                }
            ]
        }`