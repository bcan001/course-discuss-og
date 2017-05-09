require "rails_helper"

RSpec.describe UserSchoolsController, :type => :controller do
	render_views
	
	before(:each) do
		@user = FactoryGirl.create(:user)
		@user_school = UserSchool.new
  	@schools = []
  	5.times do
  		@schools << FactoryGirl.create(:school, name: Faker::Name.unique.name)
  	end
	end

	describe "GET new" do
		it "renders the new form for a user school" do
			get :new, params: {id: @user.id}
      expect(response).to render_template("new")
		end
	end

end
