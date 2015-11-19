class CropsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?
  before_action :account_active?

  def index
    @plantings = []
    @user = current_user
    plantings = @user.plantings.includes(:harvest, :crop, :varietal, :measurement)
    plantings.each do |planting|
      if planting.harvest.present?
        @plantings << planting
      end
    end
    @varietals_grouped = @plantings.group_by { |x| x.varietal.name }
  end

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      flash[:success] = "Your crop was successfully saved."
      redirect_to :root
    else
      flash[:error] = "Something went wrong saving your crop."
      redirect_to new_crop_path
    end
  end

  def show
    @crops = Crop.all
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
