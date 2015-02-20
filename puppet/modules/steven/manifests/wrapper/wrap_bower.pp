class steven::wrapper::wrap_bower {
    package { 'bower':
      provider => 'npm',
      require  => Class['nodejs']
    }
}