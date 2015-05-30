#
# Cookbook Name:: interview-buster
# Recipe:: default
#
# Copyright (c) 2015 Dan Stark <dstark75@gmail.com>, All Rights Reserved.

# Install MySQL
mysql_service 'database' do
  port '3306'
  version '5.7'
  initial_root_password '!NT3rview'
  action [:create, :start]
end

# Install httpd webserver
httpd_service 'default' do
  action [:create, :start]
end

httpd_config 'default' do
  source 'mysite.cnf.erb'
  notifies :restart, 'httpd_service[default]'
  action :create
end
