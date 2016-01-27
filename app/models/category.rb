class Category < ActiveRecord::Base
	has_many :situations, through: :category_situations
end
