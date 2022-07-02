node default {

}

node 'puppetnode1.example.com' {
  include role::master_server
}

node \^dockerweb\ {
  include role::app_server
}

node \^dockerdb\ {
  include role::db_server
}
