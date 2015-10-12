class CropsController < ApplicationController
  before_action :authenticate_user!
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
      flash[:notice] = "Your crop was successfully saved."
      redirect_to :root
    else
      flash[:notice] = "Something went wrong saving your crop."
      redirect_to new_crop_path
    end
  end

  def show
  end

private

  def crop_params
    params.require(:crop).permit(:name)
  end
end