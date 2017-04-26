ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
	# self.use_transactional_fixtures = true
 #  set_fixture_class users: User
	# self.use_transactional_fixtures = true
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all
  fixtures :users, :posts

  # Add more helper methods to be used by all tests here...
end
