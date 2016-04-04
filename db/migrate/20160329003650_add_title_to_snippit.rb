class AddTitleToSnippit < ActiveRecord::Migration
  def change
  	add_column :snippits, :title, :string
  	add_index :snippits, :title
  end
end
