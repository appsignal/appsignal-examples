require "shoryuken"
require "json"

class MyWorker
  include Shoryuken::Worker

  shoryuken_options queue: "default", auto_delete: true

  # shoryuken_options body_parser: ->(sqs_msg){ REXML::Document.new(sqs_msg.body) }
  # shoryuken_options body_parser: :json
  shoryuken_options body_parser: JSON

  def perform(sqs_msg, body)
    puts sqs_msg
    puts body
  end
end
