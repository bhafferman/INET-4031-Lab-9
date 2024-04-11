group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'user04':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYnxrEonuCOM0jgFUF3Dc038gW2.D.',
  groups => 'group01', 
  managehome => true,
  comment    => 'First04 Last04',
}

user { 'user06':
  ensure => absent,
}

user { 'user05':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$xyz$fvqDLmx0wy4IIDQ2f1XgA0lTJJAecH9QVTiHNFfhLVE/PYAaCbYXgqORdpPmWD9q36FjqhQAB3cC7DpV82r2f1',
  groups => 'group02',
  managehome => true,
  comment    => 'First05 Last05',
}

user { 'user07':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$xyz$zlj5PnjldM6pveJoYYpAfowmR81rqqtgs9Xh5ikn.oRf8GxSSR4XOoi1El1Wu7rhkUrS20.oNBN1NkWRW5Tb60',
  managehome => true,
  comment    => 'First07 Last07',
}
