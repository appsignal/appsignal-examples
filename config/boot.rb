# Defines our constants
RACK_ENV = ENV["RACK_ENV"] ||= "development" unless defined?(RACK_ENV)
PADRINO_ROOT = File.expand_path("../..", __FILE__) unless defined?(PADRINO_ROOT)

# Load our dependencies
require "bundler/setup"
Bundler.require(:default, RACK_ENV)

Padrino.dependency_paths.unshift Padrino.root("config/initializers/*.rb")
Padrino.before_load { }
Padrino.after_load { }
Padrino.load!
