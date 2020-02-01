class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    
  end

  def comment_params
    params.require(:comment).permit(:text,:rate).merge(from_user_id: current_user.id, to_user_id: params[:user_id])
  end
end
