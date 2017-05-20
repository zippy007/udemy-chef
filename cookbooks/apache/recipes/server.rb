package 'httpd' do
   action :install
end

template '/var/www/html/index.html' do
    source 'index.html.erb'
    variables(
       :name => 'Zippy Zip')
    action :create
    owner 'root'
    group 'root'
end

service "httpd" do
  action [ :start, :enable ]
end
