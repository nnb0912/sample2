class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :user_id
      t.date :ship_date
      t.string :seller_sku
      t.integer :category_id
      t.decimal :supplier_price
      t.decimal :first_price
      t.integer :qty
      t.string :store
      t.integer :createflg

      t.timestamps
    end
  end
end
