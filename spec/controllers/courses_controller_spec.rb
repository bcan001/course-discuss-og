require "rails_helper"

RSpec.describe CoursesController, :type => :controller do
	render_views
	
	before(:each) do |example|
		unless example.metadata[:skip_course_create]
	  	@course = FactoryGirl.create(:course, name: Faker::Name.unique.name, description: 'description of the course')
	  end
	  @school = FactoryGirl.create(:school)
	end

	describe "GET index" do
    it 'it renders the index template successfully', :skip_course_create do
    	get :index, params: { school_id: @school.id }
      expect(response).to be_success
    end

    it "renders the index template", :skip_course_create do
      get :index, params: { school_id: @school.id }
      expect(response).to render_template("index")
    end
  end

	describe "GET show" do
		it "renders the show template" do
      get :show, params: { id: @course.id, school_id: @school.id  }
      expect(response).to render_template("show")
    end
	end

	describe "GET new" do
		it "renders the new form for a course", :skip_course_create do
			get :new, params: { school_id: @school.id }
      expect(response).to render_template("new")
		end
	end

	describe "POST create" do
		it "render to the root if a course is successfully created" do
			post :create, params: { id: @course.id, school_id: @school.id, course: FactoryGirl.attributes_for(:course)}
      # expect(response).to be_success
		end
	end

	describe "GET edit" do
		it "renders the edit form for a course" do
			get :edit, params: {id: @course.id, school_id: @school.id }
   		# expect(response).to render_template("edit")
		end
	end

	describe "PUT update" do
		it "render to the root if a course is successfully updated" do
			put :update, params: { id: @course.id, school_id: @school.id, course: FactoryGirl.attributes_for(:course) }
      # expect(response).to be_success
		end
	end

end








