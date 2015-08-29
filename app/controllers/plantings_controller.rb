class PlantingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @plantings = @user.plantings.all
    @planting = Planting.new
    @crops = Crop.all
    @varietals = Varietal.all
    @harvest = Harvest.new
  end

  def show
    @user = current_user
    @plantings = @user.plantings.all
  end

  def new
    @planting = Planting.new
  end

end