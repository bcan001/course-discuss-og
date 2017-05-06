class User < ApplicationRecord
	has_secure_password

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :phone, presence: true
	validates :username, presence: true, uniqueness: true
	validates :tutor, presence: true

	# User has many posts
	has_many :posts, dependent: :destroy
	
	# User has many favorite courses
	has_many :favorites, dependent: :destroy


	# User has many Schools through user_school
	has_many :user_school
	has_many :schools, :through => :user_school

	# User has many Courses through user_course
	has_many :user_course
	has_many :courses, :through => :user_course

	# Users can be friends with other users
	has_many :friendships
	has_many :friends, :through => :friendships
	# determine what other users have added a user as a friend
	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user

	# determine if a user is a tutor of a course
	has_many :is_tutors

end