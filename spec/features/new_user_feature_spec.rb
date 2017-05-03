require "rails_helper"

RSpec.describe "the user sign up process", :type => :feature do

  before :each do
    @user = FactoryGirl.create(:user, first_name: 'John', last_name: 'Jones', email: 'jjones@gmail.com', phone: '9061234567', username: 'jjones', password: 'password')
  end

  it "creates a new user when valid entries are submitted" do
    visit '/users/new'
    within("#sign-up") do
      fill_in 'user_first_name', with: @user.first_name
      fill_in 'user_last_name', with: @user.last_name
      fill_in 'user_email', with: @user.email
      fill_in 'user_phone', with: @user.phone
      fill_in 'user_username', with: @user.username
      fill_in 'user_password', with: @user.password
      # fill_in "user_tutor", with: @user.tutor
    end
    click_button 'Sign Up'
    # expect(page).to have_content "You've successfully signed up."
  end



end