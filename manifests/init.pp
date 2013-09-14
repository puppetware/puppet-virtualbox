# == Class: virtualbox
#
# Install VirtualBox for Darwin
#
# === Examples
#
#  class { virtualbox: }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class virtualbox (
  $version = $virtualbox::params::version,
  $build = $virtualbox::params::build
) inherits virtualbox::params {
  anchor {'virtualbox::begin': } ->
  class {'virtualbox::install': } ->
  anchor {'virtualbox::end': }
}