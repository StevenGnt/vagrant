class steven::default::wrap_default {
    # Set timezone
    class { 'timezone':
        timezone => 'Europe/Paris',
    }

    # Sync clock
    class { '::ntp':
        servers => [
            '0.fr.pool.ntp.org',
            '1.fr.pool.ntp.org',
            '2.fr.pool.ntp.org',
            '3.fr.pool.ntp.org'
        ],
    }
}