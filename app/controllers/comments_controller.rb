class CommentsController < ApplicationController
  def new; end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    respond_to do |format|
      format.html { redirect_to post }
      format.js
    end
  end

  def delete; end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end
end
