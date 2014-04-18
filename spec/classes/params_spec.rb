describe 'fw::params' do

  context 'on non supported operating systems' do
    let :facts do
      {:operatingsystem => 'RedHat',
      :kernel => 'Linux',}
    end
    it 'should fail' do
      expect { subject }.to raise_error(/Module fw is not supported on RedHat/)
    end
  end

end
