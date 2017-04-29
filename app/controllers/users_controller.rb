class UsersController < ApplicationController
	before_action :authenticate_user!, only: ['edit','update','destroy']

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "You've successfully signed up."
			redirect_to root_path
		else
      flash[:notice] = "Please fill in the fields correctly."
			render 'new'
		end
	end

	def edit
		@user = User.find(session[:user_id]) if session[:user_id]
	end

	def update
		@user = User.find(session[:user_id]) if session[:user_id]
		if @user.update(user_params)
      flash[:notice] = 'User Profile has been updated successfully.'
      redirect_to user_path(@user)
	   else
	   	flash[:notice] = 'Please fill in all fields correctly to update profile.'
	    render :edit
	   end
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:username, :password, :first_name, :last_name, :email, :phone)
	end

end