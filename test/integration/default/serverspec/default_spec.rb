require 'serverspec'

describe package('squid3') do
  it { should be_installed.with_version("3") }
end
