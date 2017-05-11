require 'spec_helper'

describe 'schools/show.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_users]
			@users = []
			5.times do
				@users << FactoryGirl.create(:user, username: Faker::Name.unique.name, email: Faker::Internet.unique.email)
			end
    	assign(:users, @users)
	  end
		unless example.metadata[:skip_initialize_school]
			@school = FactoryGirl.create(:school)
		end
		controller.singleton_class.class_eval do
      protected
      def current_user
        FactoryGirl.build_stubbed(:user)
      end
      helper_method :current_user
    end
	end

  it 'displays school correctly' do
    render
    expect(rendered).to have_content(@school.name)
    expect(rendered).to have_content(@school.location)
    expect(rendered).to have_content(@school.state)
  end


end