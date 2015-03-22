class Product < ActiveRecord::Base

	belongs_to :category
	has_many :comments

	validates :name, :presence => true 
	validates :description, :presence => true 
	validates_uniqueness_of :name
end
