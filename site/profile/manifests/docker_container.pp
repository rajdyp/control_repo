class profile::docker_container {
  include docker
  docker::image { 'centos':
    ensure    => 'present',
  }
  docker::run { 'dcw1.example.com':
    image   => 'centos',
    command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  }
}
