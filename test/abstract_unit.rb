$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'rubygems'
require 'dry_plugin_test_helper'
require 'test/unit'
require 'mocha'


plugin_root = File.dirname(__FILE__) + '/..'
$asset_packages_yml = YAML.load_file("#{plugin_root}/test/asset_packages.yml")
$asset_base_path = "#{plugin_root}/test/assets"
$tmp_basedir = "/" # use system wide temp dir. Oh yeah
$jsmin_path = "#{plugin_root}/lib"

PluginTestEnvironment.initialize_environment(File.dirname(__FILE__), :use_standard_migration => false)

# This seems unneccessary
# require 'action_controller/test_process'

# ActionController::Base.logger = nil
# ActionController::Base.ignore_missing_templates = false
# ActionController::Routing::Routes.reload rescue nil
