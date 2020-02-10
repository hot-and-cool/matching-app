class UsersController < ApplicationController
  before_action :set_user,only: [:show,:likes,:got_likes,:visiters,:visited,:ensure_correct_user]
  before_action :ensure_correct_user,only: [:likes,:got_likes,:visiters,:visited]
  

  
  def index
    # 自分以外の異性を抽出
    @defferent_users = User.where.not(id:current_user.id,sex:current_user.sex)
    # # いいねを送った人を抽出
    @sent_users = Reaction.includes(:to_user).where(from_user_id: current_user.id, status: 'like').map(&:to_user)

    # いいねしたら表示させない
    @users = @defferent_users - @sent_users



    
  end


  def show
    @footprint = Footprint.new
    @user_birthday = (Date.today.strftime("%Y%m%d").to_i - @user.birthday.strftime("%Y%m%d").to_i) / 10000
    @reaction_user_ids = Reaction.includes(:from_user).where(to_user_id: @user.id, status: 'like').order("id DESC").map(&:from_user)
    @comment = Comment.new
    @comments = Comment.includes(:from_user).where(to_user_id: @user.id).order("id DESC").page(params[:page]).per(5)

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

  def visiters
    @visiters = Footprint.includes(:visiter).where(visited_id: @user.id).order("id DESC").map(&:visiter)
  end

  def vidited
    @visited = Footprint.where(visited_id: current_user.id)
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

