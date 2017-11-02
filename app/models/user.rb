class User < ApplicationRecord
	has_secure_password
	has_many :pages

	def self.matching_fullname name
		where("fullname LIKE ?", "%#{name}%")
	end
end

