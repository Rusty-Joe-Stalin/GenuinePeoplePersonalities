class ShowcasesController < ApplicationController

  def index
    @products = Product.all.order(name: :asc).page(params[:page]).per(4)
    @order_item = current_order.order_items.new
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
    if  @category_params.present?
      @result = Product.where('name LIKE ? AND category_id = ?', '%' + @search_params + '%', @category_params).order(name: :asc)
    elsif @search_params == nil
      @result = Category.find(@category_params).products
    else
      @result = Product.where('name LIKE ?', '%' + @search_params + '%')
    end
  end
end
