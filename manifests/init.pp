# Public: Install ghostscript from homebrew.
#
# Examples
#
#   include ghostscript
class ghostscript {
  require autoconf
  require libtool
  require xquartz

  package { 'boxen/brews/ghostscript':
    ensure  => '9.05-boxen1',
    require => [
      Package['autoconf'],
      Package['libtool'],
      Package['XQuartz']
    ]
  }
}
