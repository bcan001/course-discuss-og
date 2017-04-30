require "rails_helper"

RSpec.describe SchoolsController, :type => :controller do
	render_views
	
	before(:each) do |example|
		unless example.metadata[:skip_school_create]
	  	@school = FactoryGirl.create(:school, name: Faker::Name.unique.name, location: Faker::Address.unique.city, state: Faker::Address.unique.state_abbr)
	  end
	end

	describe "GET index" do
    it 'it renders the index template successfully', :skip_school_create do
    	get :index
      expect(response).to be_success
    end
  end

  describe "GET show" do
		it "renders the show template" do
      get :show, params: { id: @school.id }
      expect(response).to render_template("show")
    end
	end

	describe "GET new" do
		it "renders the new form for a school", :skip_school_create do
			get :new
      expect(response).to render_template("new")
		end
	end

	# describe "POST create" do
	# 	it "render to the root if a school is successfully created", :skip_school_create do
	# 		post :create, params: { school: FactoryGirl.attributes_for(:school)}
 #      # expect(response).to be_success
	# 	end
	# end

end
