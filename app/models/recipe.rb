class Recipe < ActiveRecord::Base
	has_many :recipe_photos
	has_many :cookeds
    has_many :cooked_users, through: :cookeds, source: :user
  has_many :recipe_situations
  has_many :situations, through: :recipe_situations
  has_many :cups, through: :cup_recipes
end
