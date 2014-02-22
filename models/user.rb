# Objects of this class are stored in 'users' table in the DB

class User < ActiveRecord::Base

  has_many :posts
  has_one :profile

end