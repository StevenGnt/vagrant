class steven::wrapper::wrap_yeoman {
    exec { "yo":
        unless  => "which yo",
        command => "sudo npm install -g yo",
        require => Package["nodejs"],
        timeout => 0;
    }
}