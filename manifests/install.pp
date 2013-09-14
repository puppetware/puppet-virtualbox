# == Class: virtualbox::install
#
# Install VirtualBox for Darwin
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class virtualbox::install {
  $version = $virtualbox::version
  $build = $virtualbox::build
  case $::kernel {
    'Darwin': {
       $source = "http://download.virtualbox.org/virtualbox/${version}/VirtualBox-${version}-${build}-OSX.dmg"
    }
    default: {
      fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
    }
  }
  package {"VirtualBox-${version}-${build}":
    ensure => installed,
    source => $source,
    provider => pkgdmg,
  }
}