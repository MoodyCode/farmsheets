class CropsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?
  before_action :account_active?

  def index
    @crops = Crop.all.order(:name)
  end

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      flash[:success] = "Your crop was successfully saved."
      redirect_to crops_path
    else
      flash[:error] = "Something went wrong saving your crop."
      redirect_to new_crop_path
    end
  end

  def show
    @crop = Crop.find(params[:id])
    @varietals = @crop.varietals.all.order(:name)
  end

  def edit
    @crop = Crop.find(params[:id])
  end

  def update
    @crop = Crop.find(params[:id])
    if @crop.update(crop_params)
      flash[:success] = "Crop was successfully updated."
      redirect_to crop_path(@crop)
    else
      flash[:error] = "There was a problem saving your crop."
      render :edit
    end
  end

private

  def crop_params
    params.require(:crop).permit(:name)
  end
end
