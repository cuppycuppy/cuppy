class CategorySituation < ActiveRecord::Base
	belongs_to :situation
 	belongs_to :category
end
