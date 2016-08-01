class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post create"
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post update"
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post DELETE"
  end

  private

    def post_params
      params.require(:post).permit(:title, :post_body)
    end


end
