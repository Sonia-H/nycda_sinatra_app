# Objects of this class are stored in 'profiles' table in the DB

class Profile < ActiveRecord::Base

  belongs_to :user

  # BELONGS-TO RELATIONSHIP
  # * http://guides.rubyonrails.org/association_basics.html#the-belongs-to-association
  #
  # - we can declare relationships that don't exclusively map 1-to-1 with a Model/table name
  # - in this case, our Profile class can have one "favorite_taco", which is actually a Taco object
  #   in the "tacos" DB.
  # - so that ActiveRecord knows how to find the Taco from the "favorite_taco_id", we let it know
  #   that the class/table is "Taco" and the primary-key is stored as 'favorite_taco_id' on the Profile
  belongs_to :favorite_taco, class_name: "Taco", foreign_key: "favorite_taco_id"

end



