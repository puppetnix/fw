class fw::params{
  case $::operatingsystem {
    Ubuntu: {
      
    }
    default:{
      fail("Module fw is not supported on ${::operatingsystem}")
    }
  }
}