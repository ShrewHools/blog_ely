class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @category_posts = @category.posts
  end

end

