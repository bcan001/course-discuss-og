require "rails_helper"

RSpec.describe Post, :type => :model do
	# test post associations
	it { should belong_to(:user) }
	it { should belong_to(:school) }
	it { should belong_to(:course) }

	# test validations
	it "post must have a title" do
  	post = FactoryGirl.build(:post, title: nil)
    expect(post).to_not be_valid
  end

  it "post must have a description" do
  	post = FactoryGirl.build(:post, description: nil)
    expect(post).to_not be_valid
  end

end


