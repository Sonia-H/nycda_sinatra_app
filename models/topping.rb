# Objects of this class are stored in 'profiles' table in the DB

class Topping < ActiveRecord::Base

  belongs_to :user

  # HAS AND BELONGS TO MANY RELATIONSHIP
  # * http://guides.rubyonrails.org/association_basics.html#the-has-and-belongs-to-many-association
  #
  # - this is a better, shorter version of the 2-step
  #   many-to-many relationship we created in class
  # - this method will look for a join table called
  #   "tacos_toppings" OR "toppings_tacos" in the DB
  has_and_belongs_to_many :tacos


end
