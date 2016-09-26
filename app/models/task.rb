class Task < ApplicationRecord
	belongs_to :wg
	belongs_to :user
end
