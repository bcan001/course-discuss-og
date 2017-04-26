require 'test_helper'
 
class UserTest < ActiveSupport::TestCase
	# fixtures :users
  # Replace this with your real tests.
  test "a user is not valid without a password" do
  	user = users(:ben)
  	if user.valid?
    	assert false
    else
    	assert true
    end
  end

  test "a user should have a post based on user_id primary key" do
    user = users(:george)

    if user.posts.any?
      assert true 
    else
      assert false
    end
  end


end