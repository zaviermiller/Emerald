class AddCompleteToLesson < ActiveRecord::Migration
  def change
  	add_column :lessons, :complete, :boolean
  end
end
