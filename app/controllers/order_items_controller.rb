class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id]||= @order.id
    flash[:notice] = "Item added to cart"
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
    #  redirect_to :back
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    #  redirect_to :back
  end

  private
  # def initliaze_session
  #     session[:order_items]||=[]
  #   end
  def order_item_params
    params.require(:order_item).permit(:quanity,:product_id)
  end
end
