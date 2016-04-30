class AddCssAnswerToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :cssanswer, :text
  end
end
