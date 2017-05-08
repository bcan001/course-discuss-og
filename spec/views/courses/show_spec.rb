require 'spec_helper'

describe 'courses/show.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_course]
			@course = FactoryGirl.build_stubbed(:course)
		end
		unless example.metadata[:skip_initialize_school]
			@school = FactoryGirl.build_stubbed(:school)
		end
		controller.singleton_class.class_eval do
      protected
      def current_user
        FactoryGirl.build_stubbed(:user)
      end
      helper_method :current_user
    end
	end

  it 'displays course correctly' do
    render
    expect(rendered).to have_content(@course.name)
    expect(rendered).to have_content(@course.description)
  end

  it 'should have add course to favorites button if current_user is (logged in)' do
  	render
  	expect(rendered).to have_content('Add Course to Favorites')
  end

end


