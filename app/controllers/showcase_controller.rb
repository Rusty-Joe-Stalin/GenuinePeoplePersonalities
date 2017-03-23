class ShowcaseController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(param[:id])
  end

  def category
  end
end
