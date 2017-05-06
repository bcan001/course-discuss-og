require "rails_helper"

RSpec.describe "the user edit process", :type => :feature do

  before :each do
    @user = FactoryGirl.create(:user)
    # session[:user_id] = @user.id
  end

  # it "updates a user profile when valid entries are submitted" do
    
  #   visit edit_user_path(@user)

  #   within("#sign-up") do
  #     fill_in 'user_first_name', with: @user.first_name
  #     fill_in 'user_last_name', with: @user.last_name
  #     fill_in 'user_email', with: @user.email
  #     fill_in 'user_phone', with: @user.phone
  #     fill_in 'user_username', with: @user.username
  #     fill_in 'user_password', with: @user.password
  #     # fill_in "user_tutor", with: @user.tutor
  #   end
  #   click_button 'Update Profile'
  #   # expect(page).to have_content "You've successfully signed up."
  # end



end