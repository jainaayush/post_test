class ApplicationController < ActionController::Base
	def user_log_in
      @user = User.find(session[:user_id]) if session[:user_id].present?
    end
end
