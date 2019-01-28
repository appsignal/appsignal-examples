class WelcomeMailStructJob < Struct.new(:id)
  def deliver(argument = nil, options = {})
    sleep 10
    puts "delivered #{argument}!"
  end
  handle_asynchronously :deliver, :run_at => Proc.new { 1.minute.from_now }

  # This will group the jobs back to a single entity, allowing incidents
  # and graphs to work properly.
  # For more information: https://docs.appsignal.com/ruby/integrations/delayed-job.html
  def appsignal_name
    "WelcomeMailStructJob#perform"
  end
end
