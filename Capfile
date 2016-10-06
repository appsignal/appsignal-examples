require "capistrano/setup"
require "capistrano/deploy"

# Require Figaro
require 'figaro'
# Set Figaro secrets/application.yml file path
# By default Figaro uses the Rails.root path to find the path, but since Rails
# is not loaded in capistrano we have to set it manually.
Figaro.application.path = File.expand_path(File.join("..", "config", "application.yml"), __FILE__)
# Make sure Figaro data is loaded into the environment
Figaro.load
# Activate the appsignal capistrano integration
require "appsignal/capistrano"
