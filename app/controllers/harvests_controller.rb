class HarvestsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?
  before_action :account_active?

  def new
    @planting = Planting.find(params[:planting_id])
    @harvest = @planting.build_harvest
  end

  def create
    @planting = Planting.find(params[:planting_id])
    @harvest = @planting.build_harvest(harvest_params)
    @harvest.dtm = (@harvest.date - @planting.date).to_i
    if @harvest.save
      flash[:success] = "Your harvest record was successfully saved."
      redirect_to :root
    else
      flash[:error] = "There was a problem saving your harvest record"
      render :new
    end
  end

private
  def harvest_params
    params.require(:harvest).permit(:date, :yield, :measurement_id)
  end
end