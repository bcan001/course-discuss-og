require "rails_helper"

RSpec.describe "the favorite a course process", :type => :feature do

  before :each do |example|
    unless example.metadata[:skip_initialize_course]
      @course = FactoryGirl.create(:course)
    end
    unless example.metadata[:skip_initialize_school]
      @school = FactoryGirl.create(:school)
    end
    @user = FactoryGirl.create(:user)
    # controller.singleton_class.class_eval do
    #   protected
    #   def current_user
    #     FactoryGirl.build_stubbed(:user)
    #   end
    #   helper_method :current_user
    # end
  end

  it "creates a new favorite when the button is clicked" do
    visit school_course_path(@school.id,@course.id)
    # click_button 'Add Course to Favorites'
    # expect(page).to have_content "Successfully added course to favorites"

    expect(page).to have_content(@course.name)
  end



end