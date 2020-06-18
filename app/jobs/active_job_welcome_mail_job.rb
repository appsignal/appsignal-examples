class ActiveJobWelcomeMailJob < ActiveJob::Base
  include Appsignal::Integrations::ResqueActiveJobPlugin
  queue_as :default

  def perform(argument = nil, options = {})
    sleep 10
    puts "delivered #{argument}!"
  end
end
