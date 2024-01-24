class Product < ApplicationRecord
	
	belongs_to :category
	belongs_to :user
  
  validates :name, :quantity, :description, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end
