class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.text :code

      t.timestamps null: false
    end
  end
end
