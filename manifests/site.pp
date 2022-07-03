node default {

}

node 'puppetnode1.example.com' {
  include role::master_server
}

node 'dcw1.example.com' {
  include role::puppet_node
}
