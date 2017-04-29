class SessionsController < ApplicationController
	def new
	end
	
	def create
		@user = User.find_by(:username => session_params[:username]).try(:authenticate, session_params[:password])
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "Logged in Successfully"
			redirect_to root_path
		else
			flash[:notice] = "Please enter correct credentials"
			render 'sessions/new'
		end
	end
	def destroy
		session.clear
		flash[:notice] = "Logged Out Successfully"
		redirect_to root_path
	end

	private
	def session_params
		params.require(:session).permit(:username,:password)
	end

end