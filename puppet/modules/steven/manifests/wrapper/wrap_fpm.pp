class steven::wrapper::wrap_fpm {
    ensure_packages(['php5']);

    # Enable mod PHP-FPM
    file { 'php5-fpm.conf' :
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        path    => "${::apache::confd_dir}/php5-fpm.conf",
        source  => 'puppet:///modules/steven/wrapper/fpm/php5-fpm.conf',
        require => [
            Class['apache'],
            Apache::Mod['fastcgi']
        ],
        notify  => Service['httpd'],
    }

    # Common configuration (between CLI and FPM, directives might be
    # found at http://gregrickaby.com/the-perfect-apc-configuration)
    ## @todo
    ## $config_common = [
    ##     "set PHP/short_open_tag Off",
    ##     "set PHP/log_errors On",
    ##     "set PHP/upload_max_filesize 20M",
    ##     "set PHP/post_max_size 20M",
    ##     "set Date/date.timezone Europe/Paris",
    ##     "set APC/apc.write_lock 1",
    ##     "set APC/apc.max_file_size 2M",
    ##     "set APC/apc.filters \"-/var/www/apc/.*\"",
    ## ]
    ## 
    ## php::fpm::config{ 'common_phpfpm':
    ##     config => $config_common,
    ##     require => Class['php::fpm'];
    ## }
    ## 
    ## php::cli::config{ 'common_phpcli':
    ##     config => $config_common,
    ##     require => Class['php::cli'];
    ## }
}