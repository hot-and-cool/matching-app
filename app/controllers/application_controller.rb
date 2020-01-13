class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name self_introduction sex img_name prefecture_id blood_type_id education_id birthday body_id job_id income_id height_id))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name self_introduction sex img_name prefecture_id body_id education_id job_id income_id height_id))
    # %i以下はkeys: [:name, :self_introduction, :sex, :img_name]と同等
  end

  def after_sign_in_path_for(resource)
    users_path
  end

end
