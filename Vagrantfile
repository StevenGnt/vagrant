Vagrant.configure("2") do |config|
    # Configure box
    config.vm.box = "debian-73-x64-virtualbox-puppet"
    config.vm.box_url = "file://boxes/debian-73-x64-virtualbox-puppet.box"
    # config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-73-x64-virtualbox-puppet.box"

    # Synced folder
    config.vm.synced_folder "./www", "/home/admin/www", owner: "root", group: "www-data", mount_options: ["dmode=775","fmode=664"]

    # Configure the machine settings
    config.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
    end

    config.vm.provision :puppet do |puppet|
        # Puppet settings
        puppet.manifests_path = "puppet/manifests"
        puppet.module_path = "puppet/modules"
        puppet.manifest_file = "init.pp"

        puppet.options = [
            # '--debug',
            # '--verbose',
            '--hiera_config /vagrant/puppet/hiera/hiera.yaml',
            '--parser=future'
        ]

        # "dev" machine
        config.vm.define "dev", autostart: false do |dev|
            dev.vm.hostname = "dev.steven-gnt.com"
            dev.vm.network :private_network, ip: "192.168.144.100"
            dev.vm.provider :virtualbox do |v|
                v.customize ["modifyvm", :id, "--name", "Steven Gnt / Dev"]
            end

            puppet.facter = {
			    "fqdn" => "dev.steven-gnt.com",
                "hiera_data_dir" => "/vagrant/puppet/hiera/data",
                "machine" => "dev"
            }
        end
    end
end