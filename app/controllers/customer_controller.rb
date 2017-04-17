class CustomerController < ApplicationController
  def index
  end

  def create
    @customer = Customer.new
    # @customer.email = :email
    # @customer.province_id = :province.to_i
    @customer.save
    # redirect_to checkout_path
  end

  def show
  end
end
