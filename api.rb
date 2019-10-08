require 'sinatra'

set :port, 8081
set :bind, '0.0.0.0'

get '/hello' do
    status 200
    body "Hello, world!"
end

post '/hello' do
    status 405
    body "This method is unsupported."
end

get '/check' do
    status 200
    body "GET message received"
end

post '/check' do
    if params.has_key?("msg")
        status 200
        body "POST message received: " + params["msg"]
    else
        status 405
        body "This method is unsupported."
    end
end