class Product < ApplicationRecord
	belongs_to :category
	belongs_to :brand
	has_one_attached :image
	has_many :carts
	has_many :customers, through: :carts
	
end
