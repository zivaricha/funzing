class ActivitiesController < ApplicationController
  def index
    @activities = Activity.has_tickets_left.order_by_date
  end
  
  def show
    @activity = Activity.find(params[:id])
  end
end
