class ShowcaseController < ApplicationController
  def index
<<<<<<< HEAD
    @products = Product.all
  end

  def show
    @products = Product.find(param[:id])
=======
  end

  def show
>>>>>>> add_Controller_branch
  end

  def category
  end
end
