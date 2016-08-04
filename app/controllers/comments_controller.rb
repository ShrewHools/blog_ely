class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:success]= "Comment add"
      redirect_to post_path(@post)
    end
  end

private
  def comment_params
    params.require(:comment).permit(:body,:name,:email)
  end

end



