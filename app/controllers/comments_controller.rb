class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new comment_params
    @comment.user_id = current_user.id
    @comment.post_id = @post.id

    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
