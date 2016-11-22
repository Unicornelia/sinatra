require 'sinatra'


get '/hello/:name' do
  "Hello #{params['name']}!"
end

get '/random-cat' do
 @name = ["Amigo", "Oscar", "Viking", "Kornelia"].sample
 @date = Time.now.strftime('%A, %H:%M')
 erb :index
end

get '/named-cat' do
  p params
 @name = params[:name]
 erb :index
end

get '/form' do
  @username = params[:username]
  puts params
  erb :form
end
