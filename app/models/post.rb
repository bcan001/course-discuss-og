class Post < ApplicationRecord
	belongs_to :user
	belongs_to :school
	belongs_to :course

	validates :title, presence: true
	validates :description, presence: true
end
