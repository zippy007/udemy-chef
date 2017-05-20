package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
    content '<html><head>Hello World</head><body><p>Hello World !</p></body></html>'
    action :create
end

service "httpd" do
  action [ :start, :enable ]
end
