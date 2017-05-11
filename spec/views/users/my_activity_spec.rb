require 'spec_helper'

describe 'users/my_activity.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_user]
			@user = User.new
	  end
	end

  it 'displays my activity page for a user correctly' do
    render
    expect(rendered).to have_content("My Recent Posts:")
    expect(rendered).to have_content("People I'm Following:")
  end


end