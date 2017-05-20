package 'tree' do
   action :install
end

package 'ntp'

node['ipaddress']
node['memory']['total']

template '/etc/motd' do
    source 'motd.erb'
    variables( 
       :name => 'Zippy')
    action :create
    owner 'root'
    group 'root'
end
