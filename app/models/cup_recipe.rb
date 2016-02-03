class CupRecipe < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :cup
end
