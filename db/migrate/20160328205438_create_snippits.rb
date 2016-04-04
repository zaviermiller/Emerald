class CreateSnippits < ActiveRecord::Migration
  def change
    create_table :snippits do |t|
      t.integer :user_id
      t.text :html
      t.text :css

      t.timestamps null: false
    end
  end
end
