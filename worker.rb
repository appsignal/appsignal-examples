require "sidekiq"
require "active_job"
require "appsignal"

ActiveJob::Base.queue_adapter = :sidekiq

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

class DelayedExtensionWorker
  def self.slow(params)
    sleep 1
  end

  def self.error(params)
    raise "DelayedExtensionWorkerError!"
  end
end

class ActiveJobErrorWorker < ActiveJob::Base
  def perform(*args)
    raise "ActiveJob example error!"
  end
end

class ActiveJobSlowWorker < ActiveJob::Base
  def perform(*args)
    sleep 10
  end
end
