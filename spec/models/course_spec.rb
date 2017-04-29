require "rails_helper"

RSpec.describe Course, :type => :model do
  before(:each) do
    @course = FactoryGirl.create(:course)
  end

	# test course associations
	it { should belong_to(:school) }
	it { should have_many(:users).through(:user_course) }
  it { should have_many(:posts) }
  it { should have_many(:is_tutors) }

	# test validations
	it "course must have a name" do
  	@course.name = nil
    expect(@course).to_not be_valid
  end

  it "course must have a description" do
    @course.description = nil
    expect(@course).to_not be_valid
  end

end

