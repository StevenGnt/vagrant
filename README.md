# Vagrant

Base Vagrant configuration to quickly set a dev environnement.
The "boxes" directory is empty, you can put your own boxes in it and call them in the Vagrantfile.

# "dev" machine
The machine named "dev" contains the following :
- Apache server
- PHP FPM
- Composer
- Nodejs
- Bower
- Gulp
- MySql

## Troubleshooting

An error might occure while loading the VM, talking about an unknown 
mount mode. Just run "vagrant plugin install vagrant-vbguest" and reload 
the Vagrant VM.

## TODO
Puppet provisionning for "dev" and everything it is supposed to contain.
