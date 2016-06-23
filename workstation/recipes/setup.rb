#package 'cowsay' do
#	action :install
#end

package 'tree' do
	action :install
end

package 'git' do
	action :install
end


file '/etc/motd' do
	content "Property of JAC

	IPADDRESS: #{node['ipaddress']}
	IP: #{node['hostname']}
	Mem: #{node['memory']['total']} KB
	CPU: #{node['cpu'] ['0'] ['mhz']} MHz 
"
	mode '0644'
	owner 'root'
	group 'root'
end
