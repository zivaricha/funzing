class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def my_orders
    @user = current_user
    @user_orders = @user.orders.joins(:activity).order("activities.date ASC")
  end
  
end
