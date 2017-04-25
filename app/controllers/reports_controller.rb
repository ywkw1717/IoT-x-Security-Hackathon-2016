class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  #dataを受け取って作成？
  def new
    @report = nil
  end

  def create
    @report = Report.new
    @report.heart_rate = params[:heart_rate] #reports/?heart_rate=
    @report.save
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to(reports_url) }
    end
  end

end
