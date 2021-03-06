class fw::pre inherits fw::params{
  Firewall {
    require => undef,
  }
  # basic in/out
  firewall { '000 accept all icmp':
    chain    => 'INPUT',
    proto    => 'icmp',
    action   => 'accept',
  }
  firewall { '001 accept all to lo interface':
    chain    => 'INPUT',
    proto    => 'all',
    iniface  => 'lo',
    action   => 'accept',
  }
  firewall { '003 accept related established rules':
    chain    => 'INPUT',
    proto    => 'all',
    state    => ['RELATED', 'ESTABLISHED'],
    action   => 'accept',
  }
  # Allow SSH port
  if $fw::allow_ssh == true {
    firewall { '100 allow openssh':
      chain   => 'INPUT',
      state   => ['NEW'],
      dport   => '22',
      proto   => 'tcp',
      action  => 'accept',
    }
  }
}