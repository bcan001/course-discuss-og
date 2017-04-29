require "rails_helper"

RSpec.describe SessionsController, :type => :controller do
	describe "GET new" do
    it "renders the new form for a login session" do
      get :new
      expect(response).to render_template("new")
    end
  end

end
