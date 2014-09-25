#
# Cookbook Name:: neededRepos
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
### %userprofile%\chef-repo\cookbooks\neededRepos\default.rb

## Add epel and internal repo to chef clients

# wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
# rpm -ivh epel-release-6-8.noarch.rpm

# Add install epel script and set to executable
cookbook_file "/tmp/neededRepos.sh" do
  source "neededRepos.sh"
  mode 0755
end

# Add internal repo
cookbook_file "/etc/yum.repos.d/rhel6.5_patchset_201431_CORP.repo" do
	source "rhel6.5_patchset_201431_CORP.repo"
end

#update yum to add new repos to repo list
execute "install my repo" do
  command "sh /tmp/neededRepos.sh"
end

