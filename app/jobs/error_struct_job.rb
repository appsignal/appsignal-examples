class ErrorStructJob < Struct.new(:id)
  def break_things(argument = nil, options = {})
    raise "Error #{argument}"
  end
  handle_asynchronously :break_things, :run_at => Proc.new { 1.minute.from_now }

  # This will group the jobs back to a single entity, allowing incidents
  # and graphs to work properly.
  # For more information: https://docs.appsignal.com/ruby/integrations/delayed-job.html
  def appsignal_name
    "ErrorStructJob#perform"
  end
end
