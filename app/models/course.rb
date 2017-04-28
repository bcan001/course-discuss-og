class Course < ApplicationRecord
	# belongs to a school
	belongs_to :school

	# has many users through user_course
	has_many :user_course
	has_many :users, :through => :user_course

	has_many :posts, dependent: :destroy
	has_many :is_tutors

	validates :name, presence: true
	validates :description, presence: true

end