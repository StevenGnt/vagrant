class steven::wrapper::wrap_composer {
    # Composer installation
    class { 'composer':
        command_name => 'composer',
        target_dir   => '/usr/local/bin',
        auto_update  => true,
        require      => Class['Php::Cli'];
    }
}