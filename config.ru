require_relative "./app"

Appsignal.config = Appsignal::Config.new(
  File.expand_path("../", __FILE__), # The root of your app
  ENV["RACK_ENV"] # The environment of your app (development/production)
)

Appsignal.start_logger
Appsignal.start

run Acme::Api
