class Brand < ApplicationRecord
	has_many :products
	has_many :categories , :through => :products
	#belongs_to :category
end
