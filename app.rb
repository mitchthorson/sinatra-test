require 'sinatra'
require 'json'

data = [{
  :name => 'test1',
  :is_done => 'false'
}]

get '/' do
  content_type :json
  data.to_json
end

post '/' do
  new = JSON.parse(request.body.read)
  data << new
  content_type :json
  data.to_json
end
