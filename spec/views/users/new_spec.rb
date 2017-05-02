require 'spec_helper'

describe 'users/new.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_user]
			@user = User.new
	  end
	end

  it 'displays form for new user correctly' do
    render
    expect(rendered).to have_content("Sign Up")
  end


end