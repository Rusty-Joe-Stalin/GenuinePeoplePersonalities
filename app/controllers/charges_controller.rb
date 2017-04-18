class ChargesController < ApplicationController
  def new
    @order = current_order
    @order.tax = params[:taxes]
    @order.total = params[:total]
    @order.order_status_id = 2
    @order.save
    session[:order_id] = nil
    flash[:notice] = 'Thank you for your purchase'
    redirect_to root_path
  end

  def create
  end
end
