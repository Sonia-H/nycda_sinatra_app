require 'sinatra'

get "/" do
  erb :index
end

get "/tacos" do
  erb :home
end

get "/hungry" do
  "I need to put some food in my mouth right now."
end

get "/unsupported" do
  "We don't support creation of tacos at this time!"
end

post "/new_taco" do
  p params
  redirect to('/unsupported')
end