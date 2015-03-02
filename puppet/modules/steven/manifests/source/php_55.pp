class steven::source::php_55 {
    apt::source { 'dotdeb':
        location => "http://packages.dotdeb.org",
        release => "wheezy-php55",
        repos => "all",
        key => "89DF5277",
        key_server => "keys.gnupg.net",
        include_src => false,
        pin => 1000
    }
}