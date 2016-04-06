class Course < ActiveRecord::Base
	has_many :lessons
	belongs_to :user
	belongs_to :group
end
