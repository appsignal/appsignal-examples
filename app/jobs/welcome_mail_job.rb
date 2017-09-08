class WelcomeMailJob
  def deliver(argument = nil, options = {})
    sleep 10
    puts "delivered #{argument}!"
  end
  handle_asynchronously :deliver, :run_at => Proc.new { 1.minute.from_now }
end
