# # encoding: utf-8

# Inspec test for recipe apache::server

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should be_listening }
  its('protocols') { should include 'tcp6'}
end

describe command('curl localhost') do
  its(:stdout) { should match(/Static Content/) }
end
