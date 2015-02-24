class steven::wrapper::wrap_apache {
    # Apache installation
    class { 'apache':
        mpm_module       => 'worker',
        default_vhost    => false,
        default_mods     => true,
        timeout          => 120,
        manage_group     => false,
        server_signature => 'Off',
        server_tokens    => 'Prod',
        trace_enable     => 'Off'
    }

    # Default vhost
    apache::vhost { "vhost_default" :
        default_vhost   => true,
        add_listen      => true,
        ip              => '*',
        port            => 80,
        docroot         => "/var/www",
        docroot_owner   => 'root',
        docroot_group   => 'www-data',
        options         => ['-Indexes','FollowSymLinks','MultiViews'],
        override        => ['All'],
        directoryindex  => 'index.html index.php'
    }

    # Mods
    include apache::mod::info
    include apache::mod::status
    include apache::mod::actions
    include apache::mod::headers
    include apache::mod::rewrite
    include apache::mod::expires
    include apache::mod::include
    include apache::mod::proxy
    include apache::mod::proxy_http
    include apache::mod::fastcgi
    include apache::mod::fcgid
}