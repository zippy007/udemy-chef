package 'httpd' do
   action :install
end

#template '/var/www/html/index.html' do
#    source 'index.html.erb'
#    variables(
#       :name => 'Zippy Zip')
#    action :create
#    owner 'root'
#    group 'root'
#end

cookbook_file '/var/www/html/index.html' do
   source 'index.html'
end

service "httpd" do
  action [ :start, :enable ]
end
