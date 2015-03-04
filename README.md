# Vagrant

## Introduction

Base Vagrant configuration to quickly set a dev environnement.
The "boxes" directory is empty, you can put your own boxes in it and call them in the Vagrantfile.

**NB: The first provision on the VM currently fails (vagrant up [?]). However, failures are solved by provisioning the machine afterwards.**

## "dev" machine
The machine named "dev" is provisioned with the following stacks :
- WebPHP
- JS

## Stacks

### WebPHP
Contains requirements to run a web server with a PHP engine (and more) :
- Apache server
- PHP FPM
- Composer
- MySQL
- PHPMyAdmin

### JS
Contains tools to run JS projects :
- NodeJS / NPM
- Bower
- Gulp
- Yeoman

## TODO

### Common
- Fix first provision failure (seems to search for packages in the wrong place)
- Stacks should provide their own sources (should not be done within hiera config, see PHP 5.5 sources)
- Could be a good idea to have a non-root user (NPM packages oftenly don't like to be run as a sudoer)

### WebPHP stack
- Enable PHP-FPM errors logging
- Fix MySQL root login