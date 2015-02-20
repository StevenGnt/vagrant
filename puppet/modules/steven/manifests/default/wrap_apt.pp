class steven::default::wrap_apt {
    # apt
    class { 'apt':
        always_apt_update => true,
        purge_sources_list   => true,
        purge_sources_list_d => true,
        purge_preferences_d  => true,
        fancy_progress => true
    }

    apt::source { 'debian':
        location => "http://ftp.fr.debian.org/debian",
        release => "wheezy",
        repos => "main contrib non-free",
        include_src => false
    }

    apt::source { 'debian_security':
        location => "http://security.debian.org/",
        release => "wheezy/updates",
        repos => "main contrib non-free",
        include_src => false
    }

    apt::source { 'debian_update':
        location => "http://ftp.fr.debian.org/debian",
        release => "wheezy-updates",
        repos => "main contrib non-free",
        include_src => false
    }

    apt::pin { 'stable':
        priority => 900,
        release => 'stable',
    }
}
