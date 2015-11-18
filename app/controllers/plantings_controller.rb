class PlantingsController < ApplicationController
  before_action :authenticate_user!
  before_action :account?
  before_action :account_active?

  def index
    @user = current_user
    @plantings = @user.plantings.includes(:harvest)
    @planting = Planting.new
  end

  def show
    @planting = Planting.find(params[:id])
  end

  def new
    @planting = Planting.new
  end

  def create
    @planting = Planting.new(planting_params)
    if @planting.save
      flash[:success] = "Your planting record was successfully saved."
      redirect_to :root
    else
      flash[:error] = "There was a problem saving your planting record."
      redirect_to :root
    end
  end

  def edit
    @planting = Planting.find(params[:id])
  end

  def update
    @planting = Planting.find(params[:id])
    if @planting.update(planting_params)
      flash[:success] = "Planting record successfully updated."
      redirect_to planting_path(@planting)
    else
      flash[:error] = "There was a problem saving your planting record."
      render :edit
    end
  end

  def destroy
    @planting = Planting.find(params[:id])
    @planting.destroy
    flash[:success] = "The planting record was successfully deleted."
    redirect_to :root
  end

private
  def planting_params
    params.require(:planting).permit(:date, :crop_id, :quantity, :measurement_id, :notes, :plot_id, :user_id, :varietal_id)
  end
end
