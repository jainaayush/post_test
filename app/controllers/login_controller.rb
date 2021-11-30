class LoginController < ApplicationController

	def new
		
	end
	def login
		user = User.find_by_email(params[:email])
	    if user && user.authenticate(params[:password])
		    session[:user_id] = user.id
		    redirect_to posts_path
	    else
	      flash[:error] = "Unauthorised Access !!"
	      redirect_to root_path
	    end
	end

	def logout
		session[:admin_user_id]=nil
		flash[:success] = "Successfully logout !!"
		redirect_to login_path
	end

	def registration
		
	end

	def create
		user = User.create(fname:params[:fname],lname:params[:lname],email:params[:email],password:params[:password])
		session[:user_id] = user.id
		redirect_to posts_path
	end
end

