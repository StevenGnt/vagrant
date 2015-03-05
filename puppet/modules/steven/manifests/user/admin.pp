class steven::user::admin {
    $admin_home = '/home/admin'

    # Create "admin" user home
    file { "admin_home_dir":
        ensure => 'directory',
        path => "${admin_home}",
        owner => 'admin',
        group => 'admin'
    }

    # Create "admin" user
    user { 'admin':
        ensure => present,
        gid => 'www-data',
        groups => ['admin', 'www-data'],
        membership => minimum,
        shell => '/bin/bash',
        home => "${admin_home}",
        password => '',
        require => [Group['admin'], Group['www-data'], File['admin_home_dir']]
    }

    ## Install bashrc and bash_aliases
    file {
        "${admin_home}/.bashrc":
            owner => 'admin',
            group => 'admin',
            mode  => '0600',
            require => User['admin'],
            source => 'puppet:///modules/steven/users/bashrc';

        "${admin_home}/.bash_aliases":
            owner => 'admin',
            group => 'admin',
            mode  => '0600',
            require => User['admin'],
            source => 'puppet:///modules/steven/users/bash_aliases';

    }
}