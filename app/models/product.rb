class Product < ActiveRecord::Base
  attr_accessible :description, :model_no, :name, :price, :inventory, :image, :category_ids

  has_and_belongs_to_many :categories

  has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}

  ## class methods

  def self.home_page_products
    order.sample(9)
  end

  def self.available
    where("inventory is not null and inventory > ?", 0)
  end

  # instance methods

  def related_products
    Product.order.sample(3) # we do not know yet
  end

  def in_stock?
    inventory.to_i > 0
  end


end
