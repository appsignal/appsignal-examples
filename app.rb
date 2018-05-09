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

  def crash
    Appsignal.instrument("perform.crash") do
      puts "Crashing..."
      sleep 1
      raise "crash!"
    end
  end
end

10.times do
  begin
    Appsignal.monitor_transaction("perform_job.monitor", :class => "Monitor", :method => "loop") do
      [
        Thread.new { Monitor.new.perform },
        Thread.new { Monitor.new.crash }
      ].each(&:join)
    end
  rescue
    # Ignore exceptions
  end
  sleep 5
end

# Make sure all transactions are flushed to the Agent.
Appsignal.stop
