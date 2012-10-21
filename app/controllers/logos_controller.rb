class LogosController < ApplicationController
  def index
    @logos = Logo.where(:published => true).order("start_date DESC")
  end

  def show
    @logo = Logo.find_by_id(params[:id])
  end

  def sneakpeek
    unless params[:key] == Dias::Application.config.sneakpeek_param
      redirect_to root_path
    end

    @logos = Logo.order("start_date DESC").all()
  end
end
