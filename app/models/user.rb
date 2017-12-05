class User < ApplicationRecord
	has_secure_password
	has_many :todoLists
	has_one :account
end
