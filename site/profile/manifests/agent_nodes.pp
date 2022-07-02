class profile::agent_nodes {
  include dockeragent
  dockeragent::node {
    'dockerweb.example.com':
  }
  dockeragent::node {
    'dockerdb.example.com':
  }
  host {'dockerweb.example.com':
    ensure => present,
    ip     => '172.18.0.2',
  }
    host {'dockerdb.example.com':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
