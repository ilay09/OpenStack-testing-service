control 'basic-1' do
  impact 1.0
  title '/etc/test should be owned by root'
  desc 'something'
  describe file('/etc/test') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
end
