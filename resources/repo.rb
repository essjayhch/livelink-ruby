provides :livelink_ruby_repo

property :name, String, name_property: true

default_action :add

action :add do
  if node['platform_version'].split('.').first.to_i < 14
    package 'python-software-properties'
  end

  apt_repository 'brightbox-ruby' do
    uri 'ppa:brightbox/ruby-ng'
  end
end

action :delete do
  apt_repository 'brightbox-ruby' do
    uri 'ppa:brightbox/ruby-ng'
    action :remove
  end
end
