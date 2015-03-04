class steven::user::root {
    # Install bashrc and bash_aliases
    file {
        '/root/.bashrc':
            owner => 'root',
            group => 'root',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/bashrc';

        '/root/.bash_aliases':
            owner => 'root',
            group => 'root',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/bash_aliases';

    }
}