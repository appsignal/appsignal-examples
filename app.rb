require 'sinatra/base'
require 'appsignal/integrations/sinatra'

module API
  class Root < Sinatra::Base
    get '/' do
      'Hello world!'
    end
  end
end

module API
  class V1 < Sinatra::Base
    get '/' do
      'Hello version 1!'
    end
  end
end

module API
  class V2 < Sinatra::Base
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
