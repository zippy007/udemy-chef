package 'tree' do
   action :install
end

package 'ntp'

node['ipaddress']
node['memory']['total']

file '/etc/motd' do
    content "This server is the property of Zippy
    HOSTNAME: #{node['hostname']}
    IP ADDRESS: #{node['ipaddress']}
    CPU: #{node['cpu']['0']['mhz']}
    MEMORY: #{node['memory']['total']}"
    action :create
    owner 'root'
    group 'root'
end
