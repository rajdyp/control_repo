default node {
  file { '/tmp/testfile':
    ensure => file,
  }
}
