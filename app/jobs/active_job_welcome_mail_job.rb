class ActiveJobWelcomeMailJob < ActiveJob::Base
  queue_as :default

  def perform(argument = nil, options = {})
    sleep 10
    puts "delivered #{argument}!"
  end
end
