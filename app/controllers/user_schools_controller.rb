class UserSchoolsController < ApplicationController

	before_action :set_user

	def new
		@schools = School.all.order("name")
		@user_school = UserSchool.new
	end

	def create
		@user_school = User.find(session[:user_id]).user_school.build(:school_id => params[:user_school][:school_id])
		if @user_school.save
			flash[:notice] = "School added to your list"
			redirect_to user_path(@user)
		else
			flash[:notice] = "School already on your list"
			redirect_to user_path(@user)
		end
	end

	def destroy
		@user_school = User.find(session[:user_id]).user_school.find(params[:id])
		@user_school.destroy
		flash[:notice] = "School removed from list"
		redirect_to user_path(@user)
	end

	private

	def set_user
		@user = User.find(session[:user_id]) if session[:user_id]
	end

end