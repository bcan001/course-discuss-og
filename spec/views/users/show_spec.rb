require 'spec_helper'

describe 'users/show.html.erb' do

	before(:each) do |example|
		unless example.metadata[:skip_initialize_user]
			@user = FactoryGirl.create(:user)
	  end
	  controller.singleton_class.class_eval do
      protected
      def current_user
        FactoryGirl.build_stubbed(:user)
      end
      helper_method :current_user
    end
	end

  it 'shows current_user correctly' do
    render
    expect(rendered).to have_content("My Profile")
  end

  it "shows current_user's information correctly" do
    render
    expect(rendered).to have_content(@user.first_name)
    expect(rendered).to have_content(@user.last_name)
    expect(rendered).to have_content(@user.email)
    expect(rendered).to have_content(@user.phone)
    expect(rendered).to have_content(@user.username)
  end




end