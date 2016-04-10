class CreateLessons < ActiveRecord::Migration
  def up
    create_table :lessons do |t|
      t.text :code

      t.timestamps null: false
    end
    def down 
    	drop_table :lessons
    end
  end
end
