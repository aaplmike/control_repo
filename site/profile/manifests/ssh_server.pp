class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@'master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKgMPpQmddqIvhO6R1TVPf7yM98gGzg7OS2LkpLjS3kCmJmEk3Fwz977Ov1Qr4qp0D5EOYzFyjacmyJYRJz9F/IVqz1wEkpD/rvzPY0zklzXul29x3uI5pJbnxQMelWQp1mh+qFXeFDVd0vMclN16cOBv/xmRodtaZWJp1/GFVzJmliZtp7m89Ej2VKskH0vAPxNvQSC0G3GjP4SyAOvbKx4ey86PTX5oQpybSGvorsgKfWvMXYTKIOPlUsqkbpDPnlW+rp220N7pFam2d9cVcUB2/AbvbCIbG/7knG9fwQtqzrcWag/YmCWScCCI8Qgw6+GrN93Vsj9HaiXnvcY4x',
  }
}
