class fw::params{
  case $::operatingsystem {
    CentOS, Ubuntu: {
      # ok!
    }
    default:{
      fail("Module fw is not supported on ${::operatingsystem}")
    }
  }
}