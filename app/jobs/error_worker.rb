class ErrorWorker < Resque::Job
  extend Appsignal::Integrations::ResquePlugin

  @queue = :normal

  def self.perform(options)
    raise "Oh no an error!"
  end
end
