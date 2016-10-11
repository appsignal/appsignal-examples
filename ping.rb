module Acme
  class Ping < Grape::API
    format :json
    get "/ping" do
      sleep 0.5
      { ping: "pong" }
    end
  end
end
