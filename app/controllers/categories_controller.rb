class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))
    @category.save
    redirect_to categories_path
  end

  def index
    @categories = Category.all
  end
end
