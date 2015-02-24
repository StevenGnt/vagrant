class steven::wrapper::wrap_mysql {
    $password = '4a42cdce68db8d8c!a1af48b39a12'

    # MySQL installation
    class { 'mysql':
        root_password => $password,
    }

    # root's "GRANT" access
    mysql::grant { "root_access_localhost" :
        mysql_privileges     => 'ALL',
        mysql_db             => '*',
        mysql_user           => 'root',
        mysql_password       => $password,
        mysql_host           => 'localhost',
        mysql_create_db      => false
    }

    mysql::grant { "root_access_all" :
        mysql_privileges     => 'ALL',
        mysql_db             => '*',
        mysql_user           => 'root',
        mysql_password       => $password,
        mysql_host           => '%',
        mysql_create_db      => false
    }
}