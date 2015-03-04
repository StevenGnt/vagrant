class steven::wrapper::wrap_gulp {
    # Install Gulp via NPM
    exec { "gulp":
        unless  => "which gulp",
        command => "sudo npm install -g gulp",
        require => Package["nodejs"],
        timeout => 0;
    }
}