class UsersController < ApplicationController
  before_action :set_user,only: [:show,:likes,:ensure_correct_user]
  before_action :ensure_correct_user,only: [:likes]
  def index
    @users = User.where.not(id:current_user.id,sex:current_user.sex)
  end

  def show
    
  end

  def likes
    @sent_reaction_user_ids = Reaction.where(from_user_id: @user.id, status: 'like').order("id DESC").map(&:to_user)
  end
end

def set_user
  @user = User.find(params[:id])
end

def ensure_correct_user
  if @user.id != current_user.id
    redirect_to user_path(@user.id)
  end
end