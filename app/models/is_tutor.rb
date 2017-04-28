class IsTutor < ApplicationRecord
	belongs_to :user
	belongs_to :course

	validates :rate, presence: true
	validates :description, presence: true
end