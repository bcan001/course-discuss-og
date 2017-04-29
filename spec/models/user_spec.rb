require "rails_helper"

RSpec.describe User, :type => :model do
	# test user associations are working
  it { should have_one(:is_tutor) }
  it { should have_many(:posts) }
  it { should have_many(:schools).through(:user_school) }
  it { should have_many(:courses).through(:user_course) }
  it { should have_many(:friends).through(:friendships) }
  it { should have_many(:inverse_friends).through(:inverse_friendships) }

  # test validations
 	it "user should be valid upon creation with all attributes" do
  	user = FactoryGirl.build(:user, email: "b.caneba@yahoo.com", username: "bcan001")
    expect(user).to be_valid
  end

  # it "a user with a non-unique email should not be created" do
  # 	user = FactoryGirl.build(:user, email: "b.caneba@yahoo.com")
  #   expect(user).to_not be_valid
  # end

  # it "a user with a non-unique username should not be created" do
  # 	user = FactoryGirl.build(:user, username: "bcan001")
  #   expect(user).to_not be_valid
  # end

  it "a user without a first_name should not be created" do
  	user = FactoryGirl.build(:user, email: "gjones@yahoo.com", username: "gjones", first_name: nil)
    expect(user).to_not be_valid
	end

	it "a user without a last_name should not be created" do
  	user = FactoryGirl.build(:user, email: "ekali@yahoo.com", username: "ekali", last_name: nil)
    expect(user).to_not be_valid
	end

	it "a user without a phone should not be created" do
  	user = FactoryGirl.build(:user, email: "jpan@yahoo.com", username: "jpan", phone: nil)
    expect(user).to_not be_valid
	end

	it "a user without a tutor should not be created" do
  	user = FactoryGirl.build(:user, email: "medasin@yahoo.com", username: "medasin", tutor: nil)
    expect(user).to_not be_valid
	end

end

