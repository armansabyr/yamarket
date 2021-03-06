class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to categories_path
    else
      render "new"
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  def show

  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
  def set_category
    @category = Category.find(params[:id])
  end
end
