require 'sinatra'

get '/' do
  "Hi"
end

get '/hello/hasnain' do
  "Hello Hasnain"
end


get '/hello/bob' do
  "Hello Bob"
end


get '/hello/Jon' do
  "Hello Jon"
end

get '/hello/:name' do
  name = params['name'].capitalize
  "Hi #{name}"
end

get '/:name/:job' do
  "#{params['name']} is a #{params['job']}"
end

get '/home' do

end