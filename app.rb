require 'sinatra/base'
require 'appsignal/integrations/sinatra'

module API
  class V1 < Sinatra::Base
    get '/1' do
      'Hello version 1!'
    end
  end
end

module API
  class V2 < Sinatra::Base
    get '/2' do
      'Hello version 2!'
    end

    get '/2/slow' do
      sleep 10
      "ZzZzZzZ.."
    end

    get "/2/error" do
      raise "error"
    end

    get '/2/?' do
      'optional param page'
    end
  end
end

module API
  class Root < Sinatra::Base
    get '/' do
      'Hello world!'
    end

    use API::V1
    use API::V2
  end
end
