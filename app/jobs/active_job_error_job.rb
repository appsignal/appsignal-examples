class ActiveJobErrorJob < ActiveJob::Base
  include Appsignal::Integrations::ResqueActiveJobPlugin
  queue_as :default

  def perform(argument = nil, options = {})
    raise "Error #{argument}"
  end
end
