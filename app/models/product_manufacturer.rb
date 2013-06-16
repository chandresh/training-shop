class ProductManufacturer < ActiveRecord::Base
  attr_accessible :manufacturer_id, :product_id

  belongs_to :manufacturer
  belongs_to :product

end
