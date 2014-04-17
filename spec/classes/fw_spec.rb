require 'spec_helper'
describe 'fw' do
  let :facts do 
    {:operatingsystem => 'Ubuntu',} 
  end

  it { should have_class_count(6) }
  it { should compile.with_all_deps }

end
