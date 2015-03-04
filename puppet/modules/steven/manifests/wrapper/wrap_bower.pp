class steven::wrapper::wrap_bower {
    exec { "bower":
        unless  => "which bower",
        command => "sudo npm install -g bower",
        require => Package["nodejs"],
        timeout => 0;
    }
}