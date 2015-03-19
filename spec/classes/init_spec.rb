require 'spec_helper'
describe 'ad_auth' do

  context 'with defaults for all parameters' do
    it { should contain_class('ad_auth') }
  end
end
