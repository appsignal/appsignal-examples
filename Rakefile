require "appsignal"

Appsignal.config = Appsignal::Config.new(Dir.pwd, "development")
Appsignal.start
Appsignal.start_logger

task :foo do
  raise "bar"
end

task :bar do
  Appsignal.send_error StandardError.new("baz")
  # "rake" is the parent process name which is being stopped and the reason why
  # AppSignal is stopping.
  Appsignal.stop "rake"
end
