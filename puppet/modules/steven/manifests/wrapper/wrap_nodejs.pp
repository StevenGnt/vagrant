class steven::wrapper::wrap_nodejs {
    # Prepare NodeJS installation
    exec { "nodejs_preinstall":
        command => "curl -sL https://deb.nodesource.com/setup | sudo bash -",
        unless => "which node",
        timeout => 0;
    }

    # Install NodeJS as a regular package
    package { "nodejs":
        ensure => "present",
        require => Exec["nodejs_preinstall"];
    }
}