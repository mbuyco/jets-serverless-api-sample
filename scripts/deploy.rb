require 'rubygems'
require 'commander/import'

program :version, '1.0.0'
program :description, 'Simple deployer script'

default_command :help

global_option('', '--environment ENVIRONMENT', 'Specify which enviroment to deploy stack')
global_option('', '--profile AWS_PROFILE', 'Specify which AWS profile to use')

command :run do |c|
  c.syntax = 'run'
  c.description = 'Runs deployment'

  c.action do |args, options|
    system("export AWS_PROFILE=#{options.profile}")
  end
end
