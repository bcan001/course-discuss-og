require 'spec_helper'

describe 'users/edit.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_user]
			@user = FactoryGirl.create(:user)
	  end
	end

  # it 'displays form for editing an existing user correctly' do
  #   render
  #   expect(rendered).to have_content("Edit Profile")
  # end


end