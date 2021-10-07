class Category < ApplicationRecord
	has_many :products ,dependent: :destroy
	has_many :brands , :through => :products
	#has_many :brands
end
