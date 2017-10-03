class SlowWorker < Resque::Job
  @queue = :normal

  def self.perform(options)
    sleep 5
  end
end
