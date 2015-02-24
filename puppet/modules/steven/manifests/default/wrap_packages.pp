class steven::default::wrap_packages {
    # Necessary packages
    ensure_packages([
        'git',
        'curl',
        'wget',
        'tar',
        'tree',
        'unzip',
        'locales-all',
        'telnet'
    ])
}