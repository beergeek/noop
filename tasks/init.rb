#!/opt/puppetlabs/puppet/bin/ruby
require 'json'
require 'open3'
require 'puppet'

def enable()
  cmd_string = "puppet config set noop true --section agent"
  _stdout, stderr, status = Open3.capture3(cmd_string)
  raise Puppet::Error, stderr if status != 0
end

def disable()
  cmd_string = "puppet config set noop false --section agent"
  _stdout, stderr, status = Open3.capture3(cmd_string)
  raise Puppet::Error, stderr if status != 0
end
