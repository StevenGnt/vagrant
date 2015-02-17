Vagrant.configure("2") do |config|
	# Configure box
	config.vm.box = "debian-7.8.0-amd64"
	config.vm.box_url = "file://boxes/debian-7.8.0-amd64.box"
	
	# Synced folder
	config.vm.synced_folder "./www", "/home/admin/www", owner: "admin", group: "www-data", mount_options: ["dmode=775","fmode=664"]

	# Configure the machine settings
	config.vm.provider :virtualbox do |v|
		v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
	end

	config.vm.provision :puppet do |puppet|
		# Puppet settings
		puppet.manifests_path = "puppet/manifests"
        puppet.module_path = "puppet/modules"

		# Dev machine
		config.vm.define "dev", autostart: false do |dev|
			puppet.manifest_file = "dev.pp"
			dev.vm.hostname = "dev.steven-gnt.com"
			dev.vm.network :private_network, ip: "192.168.144.100"
		end
	end
end