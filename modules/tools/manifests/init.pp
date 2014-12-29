class tools {

  # package install list
  $packages = [
    "curl",
    "vim",
    "libcurl3", 
    "libcurl3-dev",
    "htop"
  ]

  # install packages
  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
