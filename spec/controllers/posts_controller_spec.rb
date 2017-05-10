require "rails_helper"

RSpec.describe PostsController, :type => :controller do
	render_views
	
	before(:each) do |example|
		unless example.metadata[:skip_post_create]
			@user = FactoryGirl.create(:user)
			@course = FactoryGirl.create(:course)
	  	@school = FactoryGirl.create(:school)
	  	@post = FactoryGirl.create(:post)
	  end
	end

	describe "GET new" do
		it "renders the new form for a school" do
			get :new, params: {user_id: @user.id, course_id: @course.id, school_id: @school.id}
      expect(response).to render_template("new")
		end
	end

	# describe "POST create" do
	# 	it "render to the root if a school is successfully created" do
	# 		post :create, params: { post: FactoryGirl.attributes_for(:post), user_id: @user.id, course_id: @course.id, school_id: @school.id}
 #      # expect(response).to be_success
	# 	end
	# end

end
