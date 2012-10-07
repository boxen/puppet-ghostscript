# Public: Install ghostscript from homebrew.
#
# Examples
#
#   include ghostscript
class ghostscript {
  require autoconf
  require libtool
  require xquartz

  package { 'ghostscript':
    require => [
      Package['autoconf'],
      Package['libtool'],
      Package['XQuartz']
    ]
  }
}
