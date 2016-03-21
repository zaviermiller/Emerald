class Skill < ActiveRecord::Base
	belongs_to :user

	def num_skills
		x = 0
		x = x + 1 if html5
		x = x + 1 if css3
		x = x + 1 if javascript
		x = x + 1 if ruby
		x = x + 1 if php
		x = x + 1 if python
		x = x + 1 if jquery
		return x
	end
end
