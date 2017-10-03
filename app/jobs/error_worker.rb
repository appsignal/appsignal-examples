class ErrorWorker < Resque::Job
  @queue = :normal

  def self.perform(options)
    raise "Oh no an error!"
  end
end
