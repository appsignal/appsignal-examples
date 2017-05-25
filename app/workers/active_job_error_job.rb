class ActiveJobErrorJob < ActiveJob::Base
  queue_as :default

  def perform(argument = nil, options = {})
    raise "Error #{argument}"
  end
end
