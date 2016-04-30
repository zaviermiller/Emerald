class AddJsToSnippits < ActiveRecord::Migration
  def change
    add_column :snippits, :javascript, :text
  end
end
