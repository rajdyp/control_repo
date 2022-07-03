class profile::docker_container {
  include docker
  docker::image { 'centos':
    ensure    => 'present',
  }
  docker::run { 'dcw1.example.com':
    image   => 'centos',
    ensure    => 'present',
  }
}
