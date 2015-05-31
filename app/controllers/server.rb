module TrafficSpy
  class Server < Sinatra::Base
    get '/' do
      erb :index
    end

    post '/sources' do
      parsed_source = ParseSource.new(params)
      status parsed_source.status
      body parsed_source.body
    end

    post 'sources/:identifier/data' do
      parsed_payload = PayloadParser.new(params[:payload], id)
      status parsed_payload.status
      body parsed_payload.body
    end




    not_found do
      erb :error
    end
  end
end
