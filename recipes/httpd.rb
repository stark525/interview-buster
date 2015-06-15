#
# Cookbook Name:: interview-buster
# Recipe:: httpd
#
# Copyright (c) 2015 Dan Stark <dstark75@gmail.com>, All Rights Reserved.

# Install httpd webserver
httpd_service 'default' do
  action [:create]
end

service 'httpd' do
	action :start
end