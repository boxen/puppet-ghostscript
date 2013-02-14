# Public: Install ghostscript from homebrew.
#
# Examples
#
#   include ghostscript
class ghostscript {
  include autoconf
  include libtool
  include xquartz

  package { 'ghostscript':
    require => [
      Class['autoconf'],
      Class['libtool'],
      Class['xquartz'],
    ]
  }
}
