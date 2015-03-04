class steven::user::sudoers {
    # Define admin as a sudoer
    sudoers { 'admin':
        users => 'admin',
        type => 'user_spec',
        commands => 'NOPASSWD: ALL',
        hosts => 'ALL',
        require => User['admin']
    }
}