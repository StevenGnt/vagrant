# Vagrant

## Introduction

Base Vagrant configuration to quickly set a dev environnement.
The "boxes" directory is empty, you can put your own boxes in it and call them in the Vagrantfile.

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

## TODO

### System
- Clock setup (currently out of sync)

### WebPHP stack
- Enable PHP-FPM errors logging

### JS stack
- Fill the JS stack
