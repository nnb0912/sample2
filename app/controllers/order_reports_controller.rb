class OrderReportsController < ApplicationController
  def index
     @msg =  'こんにちは'

  end

  def import_txt_new
  end

  def import_txt
    respond_to do |format|
      if OrderReport.import_txt(params[:txt_file])
        format.html { redirect_to order_reports_path }
        format.json { head :no_content }
      else
        format.html { redirect_to order_reports_path, :notice => "TXTファイルの読み込みに失敗しました。" }
        format.json { head :no_content }
      end
    end
  end
end
