require "sidekiq"
require "appsignal"

Appsignal.config = Appsignal::Config.new(Dir.pwd, "production")
Appsignal.start
Appsignal.start_logger

class SlowWorker
  include Sidekiq::Worker

  def perform(param_1, param_2)
    sleep 10
  end
end

class ErrorWorker
  include Sidekiq::Worker

  def perform(param_1, param_2)
    raise "Example error!"
  end
end
