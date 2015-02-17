Vagrant.configure("2") do |config|
	# Configure box
	config.vm.box = "debian-7.8.0-amd64"
	config.vm.box_url = "file://boxes/debian-7.8.0-amd64.box"
	
	# Configure the machine settings
	config.vm.prrovider :virtualbox do |v|
		v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
	end

	config.vm.provision :puppet do |puppet|
		# Puppet settings
		puppet.manifests_path = "puppet/manifests"
        puppet.module_path    = "puppet/modules"

		# Dev machine
		config.vm.define "dev", autostart: false do |dev|
			dev.vm.hostname = 'dev.steven-gnt.com'
			dev.vm.network :private_network, ip: "192.168.1.100"
		end
	end
end