class steven::wrapper::wrap_apache {
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
}