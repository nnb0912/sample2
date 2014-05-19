# coding: utf-8
require 'csv'   # csv操作を可能にするライブラリ
require 'kconv' # 文字コード操作をおこなうライブラ
#require "csvparser"
class OrderReport < ActiveRecord::Base

  # CSVファイルを読み込み、ユーザーを登録する
  def self.import_txt(txt_file)
    # csvファイルを受け取って文字列にする
    txt_text = txt_file.read
    data = []
    field_names = nil

    #文字列をUTF-8に変換
    CSV.parse(Kconv.toutf8(txt_text), {:col_sep => "\t"}) do |row|

      if field_names.blank? # First line
        field_names = row
      else
        order_rep = OrderReport.new
        order_rep.user_id           = '1'
        order_rep.sku_name       = row[0]  #csvの1列目を格納
        order_rep.sellerid    = row[1]  #csvの2列目を格納
        order_rep.seller_sku = row[2]  #csvの3列目を格納
        order_rep.price     = row[3]  #csvの4列目を格納
        order_rep.qty     = row[4]
        order_rep.ship_date     = row[5]
        order_rep.product_id_type     = row[6]
        order_rep.comment     = row[7]
        order_rep.item_condition     = row[8]
        order_rep.international     = row[9]
        order_rep.asin_id     = row[10]
        order_rep.zaiko_qty     = row[11]
        order_rep.fulfillment_channel     = row[12]
        order_rep.save
      end
    end
  end
end
