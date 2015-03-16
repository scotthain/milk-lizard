
package "squid3"

template "/etc/squid3/squid.conf" do
  source "squid.conf.erb"
  mode '0644'
  owner 'root'
  group 'root'
  variables({
     :squid_port => 8081,
     :cache_dir => '/var/spool/squid3',
     :cache_size => 2000
  })
end

service 'squid3' do
  action :restart
end
