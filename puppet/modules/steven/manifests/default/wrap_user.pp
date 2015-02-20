class steven::default::wrap_user {

    file {
        '/root/.bashrc':
            owner => 'root',
            group => 'root',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/root.bashrc';

        '/root/.bash_aliases':
            owner => 'root',
            group => 'root',
            mode  => '0600',
            source => 'puppet:///modules/steven/users/bash_aliases';

    }
}