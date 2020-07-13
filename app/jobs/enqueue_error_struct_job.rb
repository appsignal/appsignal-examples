class EnqueueErrorStructJob < Struct.new(:id)
  def perform(argument = nil, options = {})
    raise "Error #{argument}"
  end
end
