# require 'set'
class ShowcasesController < ApplicationController
  before_action :initliaze_session

  def index
    @products = Product.all.order(name: :asc)
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
        @result = Product.where("name LIKE ? AND category_id = ?", '%'+@search_params+'%',  @category_params).order(name: :asc)
        # @result = Category.find(@category_params)
    elsif @search_params == nil
        @result = Category.find(@category_params).products
    else
        @result = Product.where("name like ?", "%"+@search_params+"%")
    end
    #  @result = Category.find(params[:id]).products

  end

  def remeber_cart
     session[:items] << params[:id].to_i
     redirect_to :back
   end

   def remeber_remove
    session[:items].delete(params[:id].to_i)
    # redirect_back(fallback: root_path)
    redirect_to :back
  end

  def cart
    @items_to_purchase = Product.find(session[:items])
  end

  private

  def initliaze_session
      session[:items]||=[]
      # @items_to_purchase|| = nil
    end
    #
    # def increment_visit_count
    #   session[:visitCount]+=1
    #   @visitCount = session[:visitCount]
    # end
end
