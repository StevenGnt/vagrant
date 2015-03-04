class steven::wrapper::wrap_yeoman {
    # Install Yeoman via NPM
    exec { "yo":
        unless  => "which yo",
        command => "sudo npm install -g yo",
        require => Package["nodejs"],
        timeout => 0;
    }

    # Install some generators
    $generators = ['gulp-angular']

    each($generators) | $generator | {
        exec { "generator-${generator}":
            creates => "/usr/lib/node_modules/generator-${generator}",
            command => "sudo npm install -g generator-${generator}",
            require => Exec["yo"],
            timeout => 0;
        }
    }
}