require "appsignal"

Appsignal.config = Appsignal::Config.new(Dir.pwd, "development")
Appsignal.start
Appsignal.start_logger

task :foo do
  # Data about this error is automatically sent to AppSignal
  raise "bar"
end

task :bar do
  # Helper methods that require an `Appsignal.stop` call if no error is raised
  Appsignal.send_error StandardError.new("bar")
  # Custom metrics helpers: https://docs.appsignal.com/metrics/custom.html
  Appsignal.increment_counter "my_custom_counter"

  # "rake" is the parent process name which is being stopped and the reason why
  # AppSignal is stopping.
  Appsignal.stop "rake"
end
