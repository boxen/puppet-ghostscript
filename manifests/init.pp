class ghostscript {
  require autoconf
  require libtool
  require xquartz

  package { 'github/brews/ghostscript':
    ensure  => '9.05-github1',
    require => [
      Package['autoconf'],
      Package['libtool'],
      Package['XQuartz']
    ]
  }
}
