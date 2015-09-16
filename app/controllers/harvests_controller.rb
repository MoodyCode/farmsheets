class Harvest < ApplicationController

  def index

  end

  def new
    @planting = Planting.find(params[:id])
    @harvest = @planting.harvests.new
  end

  def create
    @planting = Planting.find(params[:id])
    @harvest = @planting.harvests.new(harvest_params)
    if @harvest.save
      render :root
    else
      render new_harvest_path
    end
  end

private
  def harvest_params
    params.require(:harvest).permit(:date, :yield, :planting_id, :measurement_id)
  end
end