# livelink-ruby-cookbook

Installs a PPA managed version of Ruby

PPA maintained by brightbox
## Supported Platforms

Currently only supports ubuntu
## Attributes

## Usage

### livelink_ruby_version

```chef
  livelink_ruby_version 'version' do
    action [:add, :delete]
  end
```
Installs a specific version of ruby

### livelink_ruby_default_version

```ruby
  livelink_ruby_default_version 'version' do
    action :set
  end
```

Installs (if missing) and sets the default system ruby to this version.
Uses ruby-switch.

## License and Authors

Author:: Stuart Harland and Livelink Technology (essjayhch@gmail.com infra@livelinktechnology.net)
