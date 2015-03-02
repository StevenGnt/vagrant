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
**NB: This stack currently fails on the VM's first provision (vagrant up x, see TODO section). However, failures are solved by provisioning the machine afterwards.**
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

### WebPHP stack
- First provision on the VM fails (seems to search for package in the wrong place), those next work
- Enable PHP-FPM errors logging
- Fix MySQL root login

### JS stack
- Fill the JS stack
