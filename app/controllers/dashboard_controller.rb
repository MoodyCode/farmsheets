class DashboardController < ApplicationController
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
end
