user = 'irene'
group = 'irene'
home = "/home/#{user}"
uid = 1001
gid = 1001
realname = 'Irene Bagni'

group group do
  gid gid
end

user user do
  group group
  shell '/bin/bash'
  uid uid
  gid gid
  home home
  manage_home true
  comment realname
end

[ "#{home}/Sync",
  "#{home}/Sync/Private"].each do |d|
  directory d do
    mode '0750'
    owner user
    group 'users'
  end
end

file "#{home}/examples.desktop" do
  action :delete
end