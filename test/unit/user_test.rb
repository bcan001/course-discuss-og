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


end