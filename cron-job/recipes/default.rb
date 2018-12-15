#
# Cookbook:: cron-job
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'cronie' do
	action :install
end

service 'crond' do
	action [:start, :enable]
end

file '/var/spool/cron/root' do
	owner 'root'
	group 'root'
	mode 0644
	content '*/2 * * * * /bin/chef-client'
	action :create
end


