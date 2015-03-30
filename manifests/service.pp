# Controls the services related to winbind
class winbind::service {
  case $::osfamily {
    Debian : {
      service { 'winbind':
        ensure => 'running',
        name   => 'winbind.service',
        enable => true,
      }

      service { 'samba':
        ensure => 'running',
        name   => 'samba.service',
        enable => true,
      }
    }

    default : {
      fail("The ${::osfamily} OS family is not supported by this module yet.")
    }
  }
}
