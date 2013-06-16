class CreateProductManufacturers < ActiveRecord::Migration
  def change
    create_table :product_manufacturers do |t|
      t.integer :product_id
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
