#
# Cookbook Name:: role-BI-apache-phalcon
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'php'
include_recipe 'yum-remi'

# ['git', 'php-devel', 'pcre-devel', 'gcc', 'make', 'httpd', 'php-mysql', 'php-pear'].each do |rpm|
#   package rpm do
#     action :install
#   end
# end

['git', 'pcre-devel', 'gcc', 'make', 'httpd', 'php56', 'php56-php-devel', 'php56-php-mysql', 'php56-php-pear'].each do |rpm|
  package rpm do
    action :install
  end
end



php_pear 'mongo' do
  action :install
end

git '/usr/local/src/phalcon' do
  repository 'git://github.com/phalcon/cphalcon.git'
  reference 'master'
  action :checkout
  user 'root'
  group 'root'
end

execute 'phalcon-build' do
  cwd '/usr/local/src/phalcon/build'
  user 'root'
  command %{./install}

  not_if do
  ::File.exists?('/etc/php.d/phalcon.ini')
  end
end

template '/etc/php.d/phalcon.ini' do
  source 'phalcon.ini.erb'
  owner 'root'
  group 'root'
  mode 0644
end

# This is for HTTPD
httpd_service 'default' do
  action [:create, :start]
end
