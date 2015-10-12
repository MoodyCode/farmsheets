class PlantingsController < ApplicationController
  before_action :authenticate_user!
  before_action :account_active?

  def index
    @user = current_user
    @plantings = @user.plantings.includes(:harvest)
    @planting = Planting.new
  end

  def show
    @user = current_user
    @plantings = @user.plantings.all
  end

  def new
    @planting = Planting.new
  end

  def create
    @planting = Planting.new(planting_params)
    if @planting.save
      flash[:notice] = "Your planting was successfully saved."
      redirect_to :root
    else
      flash[:notice] = "There was a problem"
      redirect_to account_path current_user
    end
  end

private

  def planting_params
    params.require(:planting).permit(:date, :crop_id, :quantity, :measurement_id, :notes, :plot_id, :user_id, :varietal_id)
  end

end