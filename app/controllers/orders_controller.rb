class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @activity = Activity.find(params[:activity_id])
    @order.user_id = current_user.id if current_user.present?
    @order.activity_id =  @activity.id if @activity.present?
    @order.total_price = @order.amount_of_tickets * @order.activity.price
    if @order.save
      @activity.update_participants_count(@order.amount_of_tickets)
      redirect_to order_path(@order)
    else
      flash[:danger] = "Something went wrong. please try again."
      redirect_to activity_path(@activity)
    end
  end
  
  def show
    @order = Order.find(params[:id])
    @activity = @order.activity
  end
    
  private
  
  def order_params
    params.require(:order).permit(:amount_of_tickets)
  end
end
