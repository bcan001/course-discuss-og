require "rails_helper"

RSpec.describe "the signin and sign out process", :type => :feature do

  before :each do
    @user = User.create(first_name: 'Bob', last_name: 'Johnson', email: 'bob@cnn.com', phone: '7236781848', username: 'bjohnson', password: 'password')
  end

  it "signs me in" do
    visit '/login'
    within("#session") do
      fill_in 'session_username', with: 'bjohnson'
      fill_in 'session_password', with: 'password'
    end
    click_button 'Log In'
    expect(page).to have_content 'Logged in Successfully'
  end

  it "signs me out" do
    visit '/schools'
    click_link 'Log Out'
    expect(page).to have_content 'Logged Out Successfully'
  end

end