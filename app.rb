require "appsignal"

# Setup config
Appsignal.config = Appsignal::Config.new(
  File.expand_path(File.dirname(__FILE__)),
  "production"
)

# Start the logger and the Agent
Appsignal.start_logger
Appsignal.start

class Monitor
  def perform
    Appsignal.instrument("perform.do_stuff") do
      puts "Doing stuff.."
      sleep 2
    end
  end
end

10.times do
  begin
    Appsignal.monitor_transaction("perform_job.monitor", :class => "Monitor", :method => "loop") do
      Monitor.new.perform
    end
  rescue
    # Ignore exceptions
  end
  sleep 5
end

# Make sure all transactions are flushed to the Agent.
Appsignal.stop
