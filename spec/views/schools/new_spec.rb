require 'spec_helper'

describe 'schools/new.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_school]
			@school = School.new
	  end
		unless example.metadata[:skip_initialize_user]
			assign(:current_user, FactoryGirl.create(:user))
		end
	end

  it 'displays form for new school correctly' do
    render
    expect(rendered).to have_content("Create New School")
  end


end