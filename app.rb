class Monitor
  def perform
    puts "Doing stuff.."
    sleep 2
  end
end

loop do
  begin
    Monitor.new.perform
  rescue
    # Ignore exceptions
  end
  sleep 5
end
