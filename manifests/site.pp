node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme dummy!',
    owner   => 'root',
  }
  file {'/root/README':
    owner => root,
  }
}
