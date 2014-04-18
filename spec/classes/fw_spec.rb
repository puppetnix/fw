require 'spec_helper'
describe 'fw' do
  let :facts do 
    {:operatingsystem => 'Ubuntu',
    :kernel => 'Linux',} 
  end

  it { should have_class_count(7) }
  it { should compile.with_all_deps }

end
