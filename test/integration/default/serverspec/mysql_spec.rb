require 'spec_helper'

describe port(3306) do
  it { should be_listening }
end

describe user('mysql') do
  it { should_exist }
  it { should have_uid 524 }
end

describe group('mysql') do
  it { should_exist }
  it { should have_gid 524 }
end

describe service ('mysql') do
  it { should be_installed }
  it { should be_running.under('mysql') }
end