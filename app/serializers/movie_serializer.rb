class MovieSerializer
  include JSONAPI::Serializer
  attributes :name, :year
end
