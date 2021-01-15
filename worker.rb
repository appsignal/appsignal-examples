require "shoryuken"
require "json"
require "appsignal"

Appsignal.config = Appsignal::Config.new(
  File.expand_path(File.dirname(__FILE__)),
  "production"
)
Appsignal.start
Appsignal.start_logger

class MyWorker
  include Shoryuken::Worker

  shoryuken_options queue: "default", auto_delete: true, body_parser: :json

  # shoryuken_options body_parser: ->(sqs_msg){ REXML::Document.new(sqs_msg.body) }
  # shoryuken_options body_parser: :json

  def perform(sqs_msg, body)
    puts sqs_msg
    puts body
  end
end
