provides :livelink_ruby_default_version

property :version, String, name_property: true

default_action :set

load_current_value do
  current_version = shell_out('ruby -v').stdout
  puts current_version
  v = current_version.split(' ')[1]
  if v.nil?
    version 0
  else
    version v.split('p').first
  end
end

action :set do
  package 'ruby-switch'
  livelink_ruby_version new_resource.version

  ruby_block 'set version' do
    block do
      shell_out "ruby-switch --set ruby#{new_resource.version}"
    end
  end
end
