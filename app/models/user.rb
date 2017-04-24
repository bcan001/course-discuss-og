class User < ApplicationRecord
	has_secure_password

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :phone, presence: true, uniqueness: true
	validates :username, presence: true
	validates :tutor, presence: true


end