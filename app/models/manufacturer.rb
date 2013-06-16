class Manufacturer < ActiveRecord::Base
  attr_accessible :name
  has_many :product_manufacturers
  has_many :products, through: :product_manufacturers
end
