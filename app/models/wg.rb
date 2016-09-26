class Wg < ApplicationRecord
	has_many :users
	has_many :tasks
	has_many :items
end
