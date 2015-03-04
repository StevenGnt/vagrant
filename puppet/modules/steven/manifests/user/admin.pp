class steven::user::admin {
    # Create "admin" user
    user { 'admin':
        ensure => present,
        gid => 'www-data',
        groups => ['admin', 'www-data'],
        membership => minimum,
        shell => '/bin/bash',
        home => '/home/admin',
        password => '',
        require => [Group['admin'], Group['www-data']]
    }

    ## Install bashrc and bash_aliases
    file {
        '/home/admin/.bashrc':
            owner => 'admin',
            group => 'admin',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/bashrc';

        '/home/admin/.bash_aliases':
            owner => 'admin',
            group => 'admin',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/bash_aliases';

    }
}