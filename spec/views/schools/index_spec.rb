require 'spec_helper'

describe 'schools/index.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_schools]
			@schools = []
			5.times do
				@schools << FactoryGirl.create(:school, name: Faker::Name.unique.name, location: Faker::Address.unique.city, state: Faker::Address.unique.state_abbr)
			end
	  end
		unless example.metadata[:skip_initialize_user]
			assign(:current_user, FactoryGirl.create(:user))
		end
	end

  # it 'displays schools correctly' do
  #   render
  #   expect(rendered).to have_content(@schools.first.name)
  # end


end