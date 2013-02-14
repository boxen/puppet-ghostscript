require 'spec_helper'

describe 'ghostscript' do
  it do
    should include_class('autoconf')
    should include_class('libtool')
    should include_class('xquartz')

    should contain_package('ghostscript').with({
      :require => [
        'Class[Autoconf]',
        'Class[Libtool]',
        'Class[Xquartz]',
      ]
    })
  end
end
