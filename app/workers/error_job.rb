class ErrorJob
  include Sidekiq::Worker

  def perform(argument = nil, options = {})
    raise "Error #{argument}"
  end
end
