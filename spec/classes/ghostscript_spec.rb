require 'spec_helper'

describe 'ghostscript' do
  it { should include_class('autoconf') }
  it { should include_class('libtool') }
  it { should include_class('xquartz') }

  it do
    should contain_package('boxen/brews/ghostscript').with({
      :ensure  => '9.05-boxen1',
      :require => [
        'Package[autoconf]',
        'Package[libtool]',
        'Package[XQuartz]',
      ]
    })
  end
end
