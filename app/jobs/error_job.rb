class ErrorJob < Que::Job
  def run(argument = nil, options)
    raise "Error #{argument}"
  end
end
