node default {

}

node 'puppetnode1.example.com' {
  include role::master_server
}
