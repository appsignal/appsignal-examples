class SlowJob < Que::Job
  def run(argument = nil, options)
    sleep 10
    puts "Delivered #{argument}"
  end
end
