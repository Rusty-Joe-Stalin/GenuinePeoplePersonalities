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

  def results
    @search_params = params[:search]
    @category_params = params[:category]

    if @category_params.present?
        @result = Product.where("name LIKE ? AND category_id = ?", '%'+@search_params+'%',  @category_params)
        # @result = Category.find(@category_params)
    elsif @search_params == nil
        @result = Category.find(@category_params).products
    else
        @result = Product.where("name like ?", "%"+@search_params+"%")
    end
    #  @result = Category.find(params[:id]).products

  end
end
