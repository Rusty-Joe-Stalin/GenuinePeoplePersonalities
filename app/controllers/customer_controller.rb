class CustomerController < ApplicationController
  def index
  end

  def create
    @new_customer = Customer.new
  end

  def show
  end
end
