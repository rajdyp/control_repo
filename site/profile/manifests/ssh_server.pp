class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_keys { 'root@puppetmaster.example.com':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC0b3Jm/lYxNvnaNdTXeyH1xfMYyDp5hsgFPUgd2pDJIs0K0+xhCQkE8355SmbRmoOwuwRjkHoVv+Xa0kZGIBXGuw9lJZvpt1uAWSJn5+9unczu0XhEMKQtVzGNaBqzkFbgXtWresaewe+wDB7I1oQyHBlzRJ2D/37Ai/PMM4H534Co+sNzG1A73b+loLUS3o6xObT9bwGiWf8JUgDoIQRt+vod+SGIWfUMsZBoMGZX27mcy/yDq7P6ssqlPQDzwWSwB7Wn67qpLFH73s3DsWix9It1hrQvrJhlW20ErSLXWRU9YJYfGLjTxjCuw/Oh+ahRt/ANTURLq5FLaKmK480I32GhixO6Xgl8Cvx+GP1ZappVhCi0pG+lauZ44JgAuZrKiQRcemi1vp8z6chVoDfk1pTCC7A9+qTALHrUQwUGrTKwOjU2FOrKzNmm8JenC0KkUgp0es6rKabpkXuYIjFq9fv+vlFRWEzIlq6da2bDwmpR4N38bf5rIgA/EdEmZgs=',
  }
}
