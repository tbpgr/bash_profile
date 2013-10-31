#
# Cookbook Name:: bash_profile
# Recipe:: default
#
# Copyright 2013, tbpgr
#
data_ids = data_bag('users')
data_ids.each do |id|
  user = data_bag_item('users', id)
  cookbook_file "/home/#{user['name']}/.bash_profile" do
    source ".bash_profile"
    owner user['name']
    group user['group']
    mode "0755"
  end
end
