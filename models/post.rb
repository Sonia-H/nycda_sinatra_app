# Objects of this class are stored in 'posts' table in the DB

class Post < ActiveRecord::Base

  belongs_to :user

end