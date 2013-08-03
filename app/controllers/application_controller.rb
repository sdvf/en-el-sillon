class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
	def current_admin_user
  	return nil if user_signed_in? && !current_user.admin?
  	current_user
	end
  
  def authenticate_admin_user!
   redirect_to new_user_session_path unless current_user.try(:is_admin?) 
  end

  def after_sign_in_path_for(resource)
      params[:next] || super
  end
end
