module TrafficSpy
  class Server < Sinatra::Base
    get '/' do
      erb :index
    end

    post '/sources' do
      parsed_source = TrafficSpy::ParseSource.new(params)
      status parsed_source.status
      body parsed_source.body
    end

    post '/sources/:identifier/data' do
      parsed_source = PayloadParser.new(params[:payload]).validate
      # parsed_source.status
      # body parsed_source
    end

    get '/sources/:identifier' do

    end




    not_found do
      erb :error
      status 403
      "This Application Does Not Exist"
    end
  end
end
