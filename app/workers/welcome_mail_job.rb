class WelcomeMailJob
  include Sidekiq::Worker

  def perform(argument = nil, options = {})
    sleep 10
    puts "delivered #{argument}!"
  end
end
