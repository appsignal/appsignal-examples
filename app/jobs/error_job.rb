class ErrorJob
  def break_things(argument = nil, options = {})
    raise "Error #{argument}"
  end
  handle_asynchronously :break_things, :run_at => Proc.new { 1.minute.from_now }
end
