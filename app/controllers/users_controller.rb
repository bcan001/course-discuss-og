class UsersController < ApplicationController

	





	private
	def user_params
		params.require(:user).permit(:username, :password, :first_name, :last_name, :email, :phone)
	end

end