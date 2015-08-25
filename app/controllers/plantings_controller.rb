class PlantingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find_by(username: params[:username])
    @plantings = @user.plantings.all
  end

end