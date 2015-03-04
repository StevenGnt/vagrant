class steven::user::groups {
    # Ensure relevant groups are present
    group {
      'www-data':
        ensure => present,
        gid => '33';

      'admin':
        ensure => present;
    }
}