require 'spec_helper'

describe user('php-user') do
  it { should_exist }
  it { should have_uid 526 }
end

describe group('php-user') do
  it { should_exist }
  it { should have_gid 526 }
end

describe service('php5') do
  it { should be_installed }
  it { should be_running.user('php-user') }
end
