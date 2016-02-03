class CupRecipe < ActiveRecord::Base

  belongs_to :cup
  belongs_to :recipe

end
