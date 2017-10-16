provides :livelink_ruby_version

property :version, String, name_property: true
property :dev, [TrueClass,FalseClass], default: true

default_action :add

action :add do
  livelink_ruby_repo 'brightbox'

  package "ruby#{version}" do
    retries 5
  end

  package "ruby#{version}-dev" do
    retries 5
  end
end

action :delete do
  package "ruby#{version}" do
    action :remove
  end
end
