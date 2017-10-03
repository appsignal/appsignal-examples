class SlowWorker < Resque::Job
  extend Appsignal::Integrations::ResquePlugin

  @queue = :normal

  def self.perform(options)
    sleep 5
  end
end
