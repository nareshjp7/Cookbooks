#
# Cookbook:: javascript
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/tmp/javascript.sh' do
	source 'javascript.sh'
	mode '0777'
	action :create
end

execute 'run-script' do
	command '/tmp/javascript.sh'
end


