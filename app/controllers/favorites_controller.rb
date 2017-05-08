class FavoritesController < ApplicationController

	def create
		@user = User.find(session[:user_id]) if session[:user_id]
		Favorite.create(user_id: @user.id, course_id: params[:course_id])
		flash[:notice] = "Successfully added course to favorites"
		redirect_to user_path(@user)
	end


end