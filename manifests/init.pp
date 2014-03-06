# Class: fw
#
# This module manages fw
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class fw {
  # iptables purge
  resources { "firewall":
    purge   => true
  }
  Firewall {
    before  => Class['iptables::post'],
    require => Class['iptables::pre'],
  }
  class { ['iptables::pre', 'iptables::post']: }
}
