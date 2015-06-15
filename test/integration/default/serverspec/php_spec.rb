require 'spec_helper'

describe package('php') do
  it { should be_installed }
end
