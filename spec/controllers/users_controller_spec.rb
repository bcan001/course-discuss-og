require "rails_helper"

RSpec.describe UsersController, :type => :controller do
	before(:each) do
	  @user = FactoryGirl.create(:user, username: Faker::Name.unique.name, email: Faker::Internet.unique.email)
	end

	describe "GET index" do
    it 'show a list of all users successfully' do
    	get :index
      expect(response).to be_success
    end

    it "renders the index template" do
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
		it "renders the new form for a user" do
			get :new
      expect(response).to render_template("new")
		end
	end

	describe "POST create" do
		it "render to the root if a user is successfully created" do
			post :create, params: { user: {username: 'bencaneba', password: 'password', first_name: 'Ben', last_name: 'Caneba', email: 'ben_caneba@kleinschmidt.com', phone: '9062314010'}}
      expect(response).to be_success
		end
	end

	# describe "GET edit" do
	# 	it "renders the edit form for a user" do
	# 		user = FactoryGirl.create(:user, username: 'bill', email: 'bill@yahoo.com')
	# 		get :edit, params: {id: user.id}
 #   		expect(response).to be_success
	# 	end
	# end

	# describe "PUT update" do
	# 	it "render to the root if a user is successfully updated" do
	# 		put :update, params: { user: {username: 'bencaneba', password: 'password', first_name: 'Ben', last_name: 'Caneba', email: 'ben_caneba@kleinschmidt.com', phone: '9062314010'}}
 #      expect(response).to be_success
	# 	end
	# end

end








