class ShowcaseController < ApplicationController
  def index
<<<<<<< HEAD
    @products = Product.all
  end


  def show
      @products = Product.find(params[:id])
  end

  def category
  end
end
