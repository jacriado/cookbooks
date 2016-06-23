require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it { should be_installed }
  end
  describe file('/var/www/html/index.html') do
    it { should be_file }
    it { should contain 'Hello World' }
  end
  describe service('httpd') do
    it {should be_enabled}
    it {should be_running}
  end
  describe command('curl localhost') do
    its(:stdout) { should match /Hello World/ }
  end
end

    Status API Training Shop Blog About 

    © 2016 GitHub, Inc. Terms Privacy Security Contact Help 

