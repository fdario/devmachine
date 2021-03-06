# frozen_string_literal: true

name 'ubik'
maintainer 'Giacomo Bagnoli'
maintainer_email 'gbagnoli@gmail.com'
license 'MIT'
description 'Installs/Configures ubik'
long_description 'Installs/Configures ubik'
version '0.1.0'

depends 'user'
depends 'pyenv'
depends 'ruby_rbenv', '< 2.0'
depends 'java'
depends 'git'
depends 'debconf'
depends 'sudo'
depends 'dnscrypt_proxy'
depends 'ruby_build'

issues_url 'https://github.com/gbagnoli/devmachine/issues'
source_url 'https://github.com/gbagnoli/devmachine'
chef_version '>=14'
supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 8.9'
