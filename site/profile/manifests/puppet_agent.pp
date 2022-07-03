class profile::puppet_agent {
  package { 'puppet-agent':
    ensure => installed,
  }
  service { 'puppet':
    ensure => 'running',
    eable => 'true',
  }
}

