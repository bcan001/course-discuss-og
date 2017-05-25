class Post < ApplicationRecord
	belongs_to :user
	belongs_to :school
	belongs_to :course

	validates :title, presence: true
	validates :description, presence: true

	def school
		School.find(self.school_id)
	end

	def course
		Course.find(self.course_id)
	end
end
