# Class: fw
#
# This module manages fw
#
# Supported arguments:
# $log_input        - 
# $log_output       - 
# $log_forward      -
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class fw (
    $log_input           = true,
    $log_output          = true,
    $log_forward         = true,
    $allow_ssh           = true,
    $allow_8080          = true,
    $allow_http            = true,
)inherits fw::params {
  # iptables purge
  resources { "firewall":
    purge   => true
  }
  Firewall {
    before  => Class['fw::post'],
    require => Class['fw::pre'],
  }
  class { ['fw::pre', 'fw::post']: }
}
