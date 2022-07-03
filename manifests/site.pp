node default {

}

node 'puppetnode1.example.com' {
  include role::master_server
  include role::minecraft_server
}
