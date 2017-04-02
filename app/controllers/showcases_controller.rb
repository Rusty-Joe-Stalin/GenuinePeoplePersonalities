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
      @products = Product.where("name LIKE ? AND category_id LIKE ?", '%'+@search_params+'%',  @category_params)
      @result = Category.find(@category_params)
  else
    @products = Product.where("name like ?", "%"+@search_params+"%")
  end
  #  @result = Category.find(params[:id]).products

end
end
