class CartController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def checkout
     params.require(:customer).permit(:email, :province_id)
     @customer = Customer.new(params.require(:customer).permit(:email, :province_id))
    # @customer.email = params[:email]
    # @customer.province_id = params[:province_id].to_i
    # @customer.save
    #
    #  @prov_params = params[:province_id]
    #
      # @selectedProvince = Province.find(@customer.province)
    @hst = (@customer.province.hst) * current_order.subtotal
    @pst = (@customer.province.pst) * current_order.subtotal
    @gst = (@customer.province.gst) * current_order.subtotal
   end
end
