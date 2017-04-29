class UserSchool < ApplicationRecord
	belongs_to :user
	belongs_to :school

	validates_uniqueness_of :user_id, :scope => :school_id
	validates :school_id, presence: true
end