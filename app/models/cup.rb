class Cup < ActiveRecord::Base
	belongs_to :user
  has_many :cup_recipes
	has_many :recipes, through: :cup_recipes
end
