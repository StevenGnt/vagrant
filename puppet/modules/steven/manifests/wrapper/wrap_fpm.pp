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
}