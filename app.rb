require "grape"
require_relative "./ping"
require "appsignal"
require "appsignal/integrations/grape"

module Acme
  class Api < ::Grape::API
    use Appsignal::Grape::Middleware

    format :json

    route [:get, :post], "hello" do
      "HEllo!"
    end

    namespace :users do
      get do
        [{ name: "Tom" }]
      end

      get :slow do
        sleep 5
        { message: "Slow namespaced request" }
      end

      get :error do
        raise "a namespaced error"
      end

      route_param :id do
        get :slow do
          sleep 5
          { message: "Slow namespaced request" }
        end

        get :error do
          raise "a namespaced + route_param error"
        end

        get do
          { name: "Tom" }
        end
      end
    end

    get do
      { message: "Hello world" }
    end

    get :slow do
      sleep 5
      { message: "Slow request" }
    end

    get :error do
      raise "an error"
    end

    mount Acme::Ping
  end
end
