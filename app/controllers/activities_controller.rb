class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all.order(:date)
  end
  
  def show
    
  end
end
