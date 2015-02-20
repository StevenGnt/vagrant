class steven::wrapper::wrap_gulp {
    package { 'gulp':
      provider => 'npm',
      require  => Class['nodejs']
    }
}