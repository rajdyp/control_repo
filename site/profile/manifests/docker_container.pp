class profile::docker_container {
  include docker
  docker::image { 'centos':
    ensure    => 'present',
  }
  docker::node { 'dcw1.example.com':
    image   => 'centos',
  }
}
