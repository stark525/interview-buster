#
# Cookbook Name:: interview-buster
# Recipe:: mysql
#
# Copyright (c) 2015 Dan Stark <dstark75@gmail.com>, All Rights Reserved.

# Install MySQL
mysql_service 'interview' do
  port '3306'
  version '5.7'
  initial_root_password '!NT3rview'
  action [:create, :start]
end