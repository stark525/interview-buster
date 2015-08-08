#
# Cookbook Name:: interview-buster
# Recipe:: python-webapp
#
# Copyright (c) 2015 Dan Stark <dstark75@gmail.com>, All Rights Reserved.

# Sets the script we use to serve a webpage

template 'mysite.py' do
	path '/opt/mysite.py'
	source 'python-webapp/mysite.py'
	owner 'root'
	group 'root'
end