class AddCourseId < ActiveRecord::Migration
  def change 
  add_column :lessons, :course_id, :integer
  end
end
