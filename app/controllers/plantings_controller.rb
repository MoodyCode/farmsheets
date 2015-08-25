class PlantingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @plantings = @user.plantings.all
  end

  def show
    @user = current_user
    @plantings = @user.plantings.all
  end

end