class ShowcasesController < ApplicationController
  def index
    @products = Product.all
  end

  def about_pages
    @about = AboutPage.all.first
  end

  def show
    @product = Product.find(params[:id])
  end

  def category
    @categories = Category.all
  end

  def result
      @result = Products.where(category_id: == params[:id])
  end
end
