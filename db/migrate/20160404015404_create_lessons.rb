class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.text :code
      t.references :learn, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
