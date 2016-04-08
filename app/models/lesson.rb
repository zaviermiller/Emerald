class Lesson < ActiveRecord::Base
	belongs_to :course
	belongs_to :user
		def self.completed?
			where(complete: 1)
		end
end
