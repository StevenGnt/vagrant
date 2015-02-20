notice "---> Provisioning machine : $::machine"
notice "---> Hiera data directory : $::hiera_data_dir"
notice "---> FQDN                 : $::fqdn"

# Set up PATH
Exec {
    path => '/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin/',
    timeout => 60,
    tries   => 3
}

# Hiera - common
hiera_include('common_classes')
# Hiera - machine
hiera_include("${::machine}_classes")