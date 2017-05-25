class WelcomeMailJob
  def deliver
    sleep 10
    puts "delivered!"
  end
  handle_asynchronously :deliver, :run_at => Proc.new { 1.minute.from_now }
end
