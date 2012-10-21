class LogosController < ApplicationController
  def index
    @logos = Logo.where(:published => true).order("start_date DESC")
  end

  def show
    @logo = Logo.find_by_id(params[:id])
  end
end
