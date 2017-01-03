require "appsignal"

Appsignal.config = Appsignal::Config.new(
  File.expand_path(File.dirname(__FILE__)),
  "production"
)
Appsignal.start
Appsignal.start_logger

class Job
  def perform
    # Create a transaction
    Appsignal::Transaction.create(
      SecureRandom.uuid,
      Appsignal::Transaction::BACKGROUND_JOB,
      Appsignal::Transaction::GenericRequest.new(ENV.to_hash)
    )

    # Add instrumentation
    Appsignal.instrument(
      "perform_job.some_name_for_this",
      :class => "Job",
      :method => "perform"
    ) do
      begin
        # Do stuff
        Foo.bar
      rescue => exception
        # Catch exceptions
        Appsignal.set_error(exception)
      ensure
        # Complete transaction
        Appsignal::Transaction.complete_current!

        # Allow agent to have started and process transaction.
        # May take longer than 5 seconds, but this delay is only here to allow
        # the `appsignal-agent` to have started before the application exits.
        # Your application probably doesn't need this as long as the
        # `appsignal-agent` process is already running on this machine.
        sleep 5
      end
    end
  end
end

Job.new.perform
