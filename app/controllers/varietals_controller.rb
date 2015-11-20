class VarietalsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?
  before_action :account_active?

  def new
    @crop = Crop.find(params[:crop_id])
    @varietal = @crop.varietals.new
  end

  def create
    @crop = Crop.find(params[:crop_id])
    @varietal = @crop.varietals.new(varietal_params)
    if @varietal.save
      flash[:success] = "Your varietal was successfully saved."
      redirect_to crop_path(@crop)
    else
      flash[:error] = "Something went wrong saving your crop."
      redirect_to :new
    end
  end

  def edit
    @crop = Crop.find(params[:crop_id])
    @varietal = @crop.varietals.find(params[:id])
  end

  def update
    @crop = Crop.find(params[:crop_id])
    @varietal = @crop.varietals.find(params[:id])
    if @varietal.update(varietal_params)
      flash[:success] = "The varietal was successfully updated."
      redirect_to crop_path(@crop)
    else
      flash[:error] = "There was an error saving the varietal."
      render :edit
    end
  end

private

  def varietal_params
    params.require(:varietal).permit(:name)
  end
end
