package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
    content "<html><head>Hello World</head><body>
    <p>HOSTNAME: #{node['hostname']}</p>
    <p>IP ADDRESS: #{node['ipaddress']}</p>
    <p>CPU: #{node['cpu']['0']['mhz']}</p>
    <p>MEMORY: #{node['memory']['total']}</p>
    </body></html>"
    action :create
    owner 'root'
    group 'root'
end

service "httpd" do
  action [ :start, :enable ]
end
