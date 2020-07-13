class WelcomeMailJob
  def deliver(argument = nil, options = {})
    sleep 1
    puts "delivered #{argument}!"
  end
  handle_asynchronously :deliver, :run_at => Proc.new { 10.seconds.from_now }
end
