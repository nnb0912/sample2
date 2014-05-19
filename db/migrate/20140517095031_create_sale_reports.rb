class CreateSaleReports < ActiveRecord::Migration
  def change
    create_table :sale_reports do |t|
      t.integer :user_id
      t.date :sell_date
      t.string :settlement_no
      t.string :type
      t.string :order_no
      t.string :seller_sku
      t.string :sku_name
      t.integer :qty
      t.string :amazon_service
      t.string :fulfillment_channel
      t.string :order_city
      t.string :order_state
      t.string :order_postal
      t.decimal :product_sales
      t.decimal :shipping_credits
      t.decimal :gift_wrap_credits
      t.decimal :promotional_rebates
      t.decimal :selling_fees
      t.string :fba
      t.decimal :fees
      t.decimal :other_transaction_fees
      t.decimal :other_total
      t.integer :createflg

      t.timestamps
    end
  end
end
