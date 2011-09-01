class GroceryItem < ActiveRecord::Base
	validates :name, :presence => true

end
