require 'sinatra'
require 'json'

data = []

greeting = {
  :header => 'My test Sinatra API',
}

get '/' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  greeting.to_json
end

post '/' do
  new = JSON.parse(request.body.read)
  data << new
  content_type :json
  data.to_json
end
