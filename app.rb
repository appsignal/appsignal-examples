require "sinatra"

get "/" do
  "Hello World!"
end

get "/slow" do
  sleep 10
  "ZzZzZzZ.."
end

get "/error" do
  raise "error"
end
