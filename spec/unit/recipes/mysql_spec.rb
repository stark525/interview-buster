#
# Cookbook Name:: interview-buster
# Spec:: mysql
#
# Copyright (c) 2015 Daniel Stark, All Rights Reserved.

require 'spec_helper'

describe 'interview-buster::mysql' do
  context 'When all attributes are default, on CentOS 6.5 platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run
    end
  end
end

