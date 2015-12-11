class RecipeSituation < ActiveRecord::Base
  belongs_to :situation
  belongs_to :recipe
end
