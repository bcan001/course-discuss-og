require "rails_helper"

RSpec.describe School, :type => :model do
  before(:each) do
    @school = FactoryGirl.create(:school)
  end

	# test course associations
	it { should have_many(:users).through(:user_school) }
  it { should have_many(:courses) }
  it { should have_many(:posts) }

	# test validations
  it "school must have a unique name" do
    @factory_school = FactoryGirl.build(:school, name: "Michigan State University")
    expect(@factory_school).to_not be_valid
  end

	it "school must have a name" do
    @school.name = nil
    expect(@school).to_not be_valid
  end

  it "school must have a location" do
    @school.location = nil
    expect(@school).to_not be_valid
  end

  it "school must have a state" do
    @school.state = nil
    expect(@school).to_not be_valid
  end

end

