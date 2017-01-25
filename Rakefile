require "appsignal"

Appsignal.config = Appsignal::Config.new(Dir.pwd, "development")
Appsignal.start
Appsignal.start_logger

task :foo do
  raise "bar"
end
