class CreateOrderReports < ActiveRecord::Migration
  def change
    create_table :order_reports do |t|
      t.integer :user_id
      t.string :sku_name
      t.string :sellerid
      t.string :seller_sku
      t.decimal :price
      t.integer :qty
      t.date :ship_date
      t.integer :product_id_type
      t.text :comment
      t.integer :item_condition
      t.integer :international
      t.string :asin_id
      t.integer :zaiko_qty
      t.string :fulfillment_channel
      t.integer :createflg

      t.timestamps
    end
  end
end
