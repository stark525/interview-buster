#
# Cookbook Name:: interview-buster
# Recipe:: mysql
#
# Copyright (c) 2015 Dan Stark <dstark75@gmail.com>, All Rights Reserved.

# Install MySQL
node['interview-buster']['python-webapp']['mysql-package-list'].each do |pkg|
	apt_package pkg do
		action :install
	end
end