require 'spec_helper'

describe port(80) do
  it { should be_listening }
end

describe user('apache-user') do
  it { should_exist }
  it { should have_uid 525 }
end

describe group('apache-user') do
  it { should_exist }
  it { should have_gid 525 }
end