class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :year
end
