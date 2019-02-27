require 'sinatra/base'
require 'appsignal/integrations/sinatra'

class Base < Sinatra::Base
end

module API
  class Root < Base
    get '/' do
      'Hello world!'
    end
  end
end

module API
  class V1 < Base
    get '/' do
      'Hello version 1!'
    end
  end
end

module API
  class V2 < Base
    get '/' do
      'Hello version 2!'
    end

    get '/slow' do
      sleep 10
      "ZzZzZzZ.."
    end

    get "/error" do
      raise "error"
    end

    get '/?' do
      'optional param page'
    end
  end
end
