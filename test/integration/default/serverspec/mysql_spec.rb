require 'spec_helper'

describe port(3306) do
  it { should be_listening }
end

describe service ('mysql-interview') do
  it { should be_running }
end