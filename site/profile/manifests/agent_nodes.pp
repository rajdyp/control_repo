class profile::agent_nodes {
  include dockeragent
  dockeragent::node {
    'dockerweb.example.com':
  }
  dockeragent::node {
    'dockerdb.example.com':
  }
}
