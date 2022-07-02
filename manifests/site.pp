node default {
  file { '/tmp/testfile':
    ensure  => file,
    content => 'This is a test file.\n',
  }
}
