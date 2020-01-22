class UsersController < ApplicationController
  before_action :set_user,only: [:show,:likes,:ensure_correct_user]
  before_action :ensure_correct_user,only: [:likes]
  

  
  def index
    @users = User.where.not(id:current_user.id,sex:current_user.sex)
    

  end

  def show
    @user_birthday = (Date.today.strftime("%Y%m%d").to_i - @user.birthday.strftime("%Y%m%d").to_i) / 10000
    @reaction_user_ids = Reaction.includes(:from_user).where(to_user_id: @user.id, status: 'like').order("id DESC").map(&:from_user)
    @comment = Comment.new
    @comments = Comment.includes(:from_user).where(to_user_id: @user.id).order("id DESC")
    if @comments.blank?
      @user_rates = "--"
      else
        @user_rates = Comment.includes(:from_user).where(to_user_id: @user.id).average(:rate).ceil(1)
    end
    
  end

  def likes
    @sent_reaction_user_ids = Reaction.includes(:to_user).where(from_user_id: @user.id, status: 'like').order("id DESC").map(&:to_user)
  end

  def got_likes
    @got_reaction_user_ids =  Reaction.includes(:from_user).where(to_user_id: current_user.id, status: 'like').order("id DESC").map(&:from_user)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  def ensure_correct_user
    if @user.id != current_user.id
      redirect_to user_path(@user.id)
    end
  end

  
end

