class FriendshipsController < ApplicationController

	def create
		@user = User.find(session[:user_id]) if session[:user_id]
		@friendship = User.find(session[:user_id]).friendships.build(:friend_id => params[:friend_id])
		if @friendship.save
			flash[:notice] = "Now following selected user"
			redirect_to my_activity_path(@user)
		else
			flash[:notice] = "You are already following this user"
			redirect_to my_activity_path(@user)
		end
	end

	def destroy
		@user = User.find(session[:user_id]) if session[:user_id]
		@friendship = User.find(session[:user_id]).friendships.find(params[:friend_id])
		@friendship.destroy
		flash[:notice] = "Successfully stopped following selected user"
		redirect_to my_activity_path(@user)
	end

end