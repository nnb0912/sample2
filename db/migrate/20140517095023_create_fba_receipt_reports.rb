class CreateFbaReceiptReports < ActiveRecord::Migration
  def change
    create_table :fba_receipt_reports do |t|
      t.integer :user_id
      t.date :receipt_date
      t.string :fnsku
      t.string :seller_sku
      t.string :sku_name
      t.integer :qty
      t.string :fba_shipment_id
      t.string :fulfillment_center_id
      t.integer :createflg

      t.timestamps
    end
  end
end
