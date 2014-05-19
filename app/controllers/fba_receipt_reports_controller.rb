class FbaReceiptReportsController < ApplicationController
  def index
     @reps = FbaReceiptReport.all
  end

  def import_txt_new
    @reps= FbaReceiptReport.scoped(:order => "created_at DESC").page(params[:page]).per(5)
  end

  #view からimport_txtアクションの呼び出し
  def import_txt
    respond_to do |format|
      #controllerからmodelの呼び出し
      if FbaReceiptReport.import_txt(params[:txt_file])
        format.html { redirect_to fba_receipt_reports_path }
        format.json { head :no_content }
      else
        format.html { redirect_to fba_receipt_reports_path, :notice => "TXTファイルの読み込みに失敗しました。" }
        format.json { head :no_content }
      end
    end
  end
end
