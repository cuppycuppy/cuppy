class Situation < ActiveRecord::Base
  has_many :recipe_situations
  has_many :recipes, :through => :recipe_situations
end
