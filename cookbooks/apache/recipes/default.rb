#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install apache
package "httpd" do
	action :install
end

#start and set apache to start on boot
service "httpd" do
	action [ :enable, :start ]
end

#Create custom index.html file
cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode 644
end