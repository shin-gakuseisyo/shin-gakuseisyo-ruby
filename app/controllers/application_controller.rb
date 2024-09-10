class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # 新規登録やアカウント更新時にnameとstudent_numberを許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :student_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :student_number])
  end
end
