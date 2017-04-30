require "rails_helper"

RSpec.describe UsersController, :type => :controller do
	render_views
	
	before(:each) do |example|
		unless example.metadata[:skip_user_create]
	  	@user = FactoryGirl.create(:user, username: Faker::Name.unique.name, email: Faker::Internet.unique.email)
	  end
	end

	describe "GET index" do
    it 'it renders the index template successfully', :skip_user_create do
    	get :index
      expect(response).to be_success
    end

    it "renders the index template", :skip_user_create do
      get :index
      expect(response).to render_template("index")
    end
  end

	describe "GET show" do
		it "renders the show template" do
      get :show, params: { id: @user.id }
      expect(response).to render_template("show")
    end
	end

	describe "GET new" do
		it "renders the new form for a user", :skip_user_create do
			get :new
      expect(response).to render_template("new")
		end
	end

	describe "POST create" do
		it "render to the root if a user is successfully created", :skip_user_create do
			post :create, params: { user: FactoryGirl.attributes_for(:user)}
      # expect(response).to be_success
		end
	end

	describe "GET edit" do
		it "renders the edit form for a user" do
			get :edit, params: {id: @user.id}
   		# expect(response).to render_template("edit")
		end
	end

	describe "PUT update" do
		it "render to the root if a user is successfully updated" do
			put :update, params: { id: @user.id}
      # expect(response).to be_success
		end
	end

end








