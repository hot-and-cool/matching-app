class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to user_path(params[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(from_user_id: current_user.id, to_user_id: params[:user_id])
  end
end
