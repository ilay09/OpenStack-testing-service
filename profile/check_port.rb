control "basic-3" do
  impact 0.3
  title "22 tcp port should be listening"
  desc "should listen 22 tcp port"
  describe port(22) do
    it { should be_listening }
    its ("protocols") {should eq ["tcp"]}
  end
end
