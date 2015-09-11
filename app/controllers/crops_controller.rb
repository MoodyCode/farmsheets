class CropsController < ApplicationController

  def index
    @crops = Crop.all
  end

  def new
    @crop = Crop.new
    @planting = @crop.plantings.build
  end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      flash[:notice] = "Your crop was successfully saved."
      redirect_to :root
    else
      flash[:notice] = "Something went wrong saving your crop."
      redirect_to new_crop_path
    end
  end

private

  def crop_params
    params.require(:crop).permit(:name, 
      plantings_attributes: [:id, :date, :crop_id, :quantity, :measurement_id, :notes, :plot_id, :user_id])
  end
end