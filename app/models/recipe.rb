class Recipe < ActiveRecord::Base
	has_many :recipe_photos
	has_many :cookeds
    has_many :cooked_users, through: :cookeds, source: :user
end
