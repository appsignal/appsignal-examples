class ErrorJob
  def break_things
    raise "Error"
  end
  handle_asynchronously :break_things, :run_at => Proc.new { 1.minute.from_now }
end
