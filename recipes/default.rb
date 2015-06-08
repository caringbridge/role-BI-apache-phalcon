#
# Cookbook Name:: role-BI-apache-phalcon
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'role-zendserver'

magic_shell_environment 'PATH' do
  value '$PATH:/usr/local/zend/bin'
end

zendserver_pear 'mongo' do
  action :install
end

git '/usr/local/src/phalcon' do
  repository 'git://github.com/phalcon/cphalcon.git'
  reference 'master'
  action :checkout
  user 'root'
  group 'root'
end

directory "/etc/php.d" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

execute 'phalcon-build' do
  cwd '/usr/local/src/phalcon/build'
  user 'root'
  command %{./install}
  environment 'PATH' => "/usr/local/zend/bin:#{ENV["PATH"]}"

  not_if do
  ::File.exists?('/etc/php.d/phalcon.ini')
  end
end

# template '/etc/php.d/phalcon.ini' do
template '/usr/local/zend/etc/conf.d/phalcon.ini' do
  source 'phalcon.ini.erb'
  owner 'root'
  group 'zend'
  mode 0664
end

# This is for HTTPD
# httpd_service 'default' do
#   action [:create, :start]
# end
