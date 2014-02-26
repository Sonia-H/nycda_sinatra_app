# GEMS (i.e. libraries) FOR APPLICATION
require 'sinatra'
require 'sinatra/activerecord'

# SETTINGS
#
# * database connection

set :database, "sqlite3:///test_app.sqlite3"
set :sessions, true

# * load Ruby files
# - this command requires all Ruby files (ending in .rb) in the root
#   of the folder AND in a folder called 'models'
# - this lets us split our models up into multiple files == cleaner

Dir['./*.rb','./models/*.rb'].each{ |f| require f }

# METHODS
#
def current_user
  if session[:user_id]
    @current_user = User.find( session[:user_id] )
  end
end

# ROUTES
#
get "/" do
  erb :index
end


post "/sign-in" do
  @user = User.where(email: params[:username] ).first

  if @user && ( @user.password == params[:password] )
    puts "Yay! Signed in!"
    #store the user id in the session
    session[:user_id] = @user.id

    redirect to "/blog"
  else
    raise "User not found!"

    redirect to "/"
  end
end


get "/tacos" do
  @tacos = Taco.all

  erb :index
end

get "/toppings" do
  @toppings = Topping.all

  erb :index
end

get "/new-post" do
  erb :new_post
end

post "/create_post" do
  if params[:title] && params[:body]
    #make the Post in here...
    @post = Post.create(user_id: params[:user_id], title: params[:title], body: params[:body])

    if @post
      redirect to("/blog")
    else
      redirect to("/new-post")
    end
  else
    redirect to("/new-post")
  end
end

get "/blog" do
  erb :home
end