# Vagrant

Base Vagrant configuration to quickly set a dev environnement.
The "boxes" directory is empty, you can put your own boxes in it and call them in the Vagrantfile.

## "dev" machine
The machine named "dev" contains the following :
- Apache server
- PHP FPM
- Composer
- Nodejs
- Bower
- Gulp
- MySQL

## TODO
### System

- Clock setup (currently out of sync)

### WebPHP stack

- Fix PHP FPM / Cli configuration
- Fix MySQL configuration
- Fix Composer installation
- Enable PHP-FPM errors logging

### JS stack
- Fill the JS stack
