class steven::wrapper::wrap_fpm {
    ensure_packages(['php5']);
    
    # Inlude modules
    include php
    include php::fpm
    include php::cli
    include php::pear
    include php::extension::apc
    include php::extension::curl
    include php::extension::intl
    include php::extension::gd
    include php::extension::memcache
    include php::extension::mcrypt
    include php::extension::imap
    include php::extension::imagick

    # Enable mod PHP-FPM
    file { 'php5-fpm.conf' :
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        path    => "${::apache::confd_dir}/php5-fpm.conf",
        source  => 'puppet:///modules/steven/wrapper/fpm/php5-fpm.conf',
        require => [Class['apache'], Apache::Mod['fastcgi']],
        notify  => Service['httpd'],
    }

    # Common configuration (between CLI and FPM, directives might be
    # found at http://gregrickaby.com/the-perfect-apc-configuration)
    $config_common = [
        "set PHP/short_open_tag Off",
        "set PHP/log_errors On",
        "set PHP/upload_max_filesize 20M",
        "set PHP/post_max_size 20M",
        "set APC/apc.write_lock 1",
        "set APC/apc.max_file_size 2M",
        "set APC/apc.filters \"-/var/www/apc/.*\"",
        "set Date/date.timezone Europe/Paris"
    ]

    php::fpm::config{ 'common_phpfpm':
        config => $config_common,
        require => Class['php::fpm'];
    }

    php::cli::config{ 'common_phpcli':
        config => $config_common,
        require => Class['php::cli'];
    }
}