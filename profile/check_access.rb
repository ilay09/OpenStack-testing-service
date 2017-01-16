control "basic-2" do
  impact 0.5
  title "/etc/test should be access to 0644 rule"
  desc "This file should only be modified by its owner (root)"
  describe file ("/etc/test") do
    its ("mode") { should cmp "0644" }
  end
end
