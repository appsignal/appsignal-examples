Delayed::Worker.logger = Logger.new(File.join(Rails.root, "log", "delayed_job.log"))
Delayed::Worker.max_run_time = 1.minute
Delayed::Worker.max_attempts = 2
