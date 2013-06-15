class Product < ActiveRecord::Base
  attr_accessible :description, :model_no, :name, :price


  ## class method

  def self.home_page_products
    order.sample(9)
  end


end
