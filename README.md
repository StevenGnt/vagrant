# Vagrant

## Introduction

Base Vagrant configuration to quickly set a dev environnement.
The "boxes" directory is empty, you can put your own boxes in it and call them in the Vagrantfile.

**NB: The first provision on the VM currently fails (vagrant up [?]). However, failures are solved by provisioning the machine afterwards.**

## "dev" machine
The machine named "dev" is provisionned with the following stacks :
- WebPHP
- JS

## Stacks

### WebPHP
Contains everything to run a web server with a PHP engine (and more).
The following are installed :
- Apache server
- PHP FPM
- Composer
- MySQL
- PHPMyAdmin

### JS
Contains everything to run JS projects :
- Nodejs
- Bower
- Gulp
- Yeoman

## TODO

### Common
- Fix first provision failure (seems to search for packages in the wrong place)
- Stacks should provide their own sources (should not be done within hiera config, see PHP 5.5 sources)

### WebPHP stack
- Enable PHP-FPM errors logging
- Fix MySQL root login