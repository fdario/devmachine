include_recipe 'marvin::openvpn'

node.override['dnscrypt_proxy']['listen_port'] = '54'
include_recipe 'dnscrypt_proxy'

include_recipe 'nginx-hardening::upgrades'
include_recipe 'nginx'
include_recipe 'nginx-hardening'

include_recipe 'marvin::oauth2_proxy'
include_recipe 'marvin::thelounge'
