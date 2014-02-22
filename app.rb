# GEMS (i.e. libraries) FOR APPLICATION
require 'sinatra'
require 'sinatra/activerecord'

# SETTINGS
#
# * database connection

set :database, "sqlite3:///test_app.sqlite3"

# * load Ruby files
# - this command requires all Ruby files (ending in .rb) in the root
#   of the folder AND in a folder called 'models'
# - this lets us split our models up into multiple files == cleaner

Dir['./*.rb','./models/*.rb'].each{ |f| require f }

# ROUTES
#
get "/" do

end

get "/tacos" do
  @tacos = Taco.all

  erb :index
end

get "/toppings" do
  @toppings = Topping.all

  erb :index
end

get "/blog" do
  @posts = Post.all

  erb :index
end

get "/members" do
  @users = User.all

  erb :index
end