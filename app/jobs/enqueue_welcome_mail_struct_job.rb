class EnqueueWelcomeMailStructJob < Struct.new(:id)
  def perform(argument = nil, options = {})
    sleep 1
    puts "delivered #{id} #{argument} #{options}!"
  end
end
