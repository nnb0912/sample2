# coding: utf-8
require 'csv'   # csv操作を可能にするライブラリ
require 'kconv' # 文字コード操作をおこなうライブラ
class FbaReceiptReport < ActiveRecord::Base

  default_scope :order => 'created_at DESC'
  paginates_per 5

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
        fba_rep = FbaReceiptReport.new
        fba_rep.user_id           = '1'
        fba_rep.receipt_date       = row[0]
        fba_rep.fnsku    = row[1]
        fba_rep.seller_sku = row[2]
        fba_rep.sku_name     = row[3]
        fba_rep.qty     = row[4]
        fba_rep.fba_shipment_id     = row[5]
        fba_rep.fulfillment_center_id     = row[6]
        fba_rep.createflg     = '0'

        fba_rep.save
      end
    end
  end
end
