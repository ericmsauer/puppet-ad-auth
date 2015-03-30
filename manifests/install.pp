# Installs packages required to utilize winbind for joining Active Directory
class winbind::install {
  $packages = ['krb5-user', 'libpam-krb5', 'winbind', 'samba']

  package { $packages: ensure => 'latest', }
}
