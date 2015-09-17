class HarvestsController < ApplicationController

  def index

  end

  def new
    @planting = Planting.find(params[:planting_id])
    @harvest = @planting.build_harvest
  end

  def create
    @planting = Planting.find(params[:planting_id])
    @harvest = @planting.build_harvest(harvest_params)
    if @harvest.save
      redirect_to :root
    else
      render new_harvest_path
    end
  end

private
  def harvest_params
    params.require(:harvest).permit(:date, :yield, :measurement_id)
  end
end