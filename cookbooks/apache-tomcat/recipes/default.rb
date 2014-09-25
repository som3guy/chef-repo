#
# Cookbook Name:: apache-tomcat
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

#Add all needed files to the server
cookbook_file "/opt/apache-tomcat-7.0.55.tar.gz" do
  source "apache-tomcat-7.0.55.tar.gz"
  mode 0644
end

cookbook_file "/tmp/installApacheTomcat.sh" do
  source "installApacheTomcat.sh"
  mode 0755
end

cookbook_file "/etc/init.d/tomcat" do
  source "tomcat"
  mode 0644
end

cookbook_file "/etc/init.d/tomcat" do
  source "tomcat"
  mode 0644
end

# Install apache-tomcat
execute "installing apache-tomcat" do
  command "sh /tmp/installApacheTomcat.sh"
end

#Configure apache-tomcat


#Deploy Sample test

