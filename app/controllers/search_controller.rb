class SearchController < ApplicationController

  def index
    @search = User.ransack(params[:q])
    @prefectures = Prefecture.all
    @blood_types = BloodType.all
    @incomes = Income.all
    @bodies = Body.all
    
    @search_users = @search.result(distinct: true)

  
  end

  def result
    @search = User.where.not(id:current_user.id,sex:current_user.sex).search(search_params)
    @search_users = @search.result(distinct: true)
  end

  private
  def search_params
    params.require(:q).permit(
      :sex_eq,
      :self_introduction_cont,
      :prefecture_id_eq,
      :blood_type_id_eq,
      :height_id_gteq,
      {:income_id_in => []},
      {:body_id_in => []})
  end

end
