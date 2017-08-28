class User < ApplicationRecord
	VALID_EMAIL = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :email, uniqueness: true, length: {minimum: 6, maximum: 25}, format: { with: VALID_EMAIL }
	validates :password, length: { minimum: 6, maximum: 15}

	has_secure_password
end
