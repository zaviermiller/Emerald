class AddCssToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :css, :text
  end
end
