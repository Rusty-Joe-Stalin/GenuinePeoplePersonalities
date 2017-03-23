class ShowcaseController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def category
    @categories = Category.all 
  end
end
