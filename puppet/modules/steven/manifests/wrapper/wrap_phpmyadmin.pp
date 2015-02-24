class steven::wrapper::wrap_phpmyadmin{
    # PHPMyAdmin installation
    package { "phpmyadmin":
        ensure => latest,
        require => [
            Class['apache'],
            Class['Php::Cli'],
            Class['Php::Fpm'],
        ]
    }

    file { "/etc/apache2/sites-enabled/50-phpmyadmin.conf":
        ensure => link,
        target => '/etc/phpmyadmin/apache.conf',
        require => Package['phpmyadmin'],
        notify => Service['httpd']
    }
}