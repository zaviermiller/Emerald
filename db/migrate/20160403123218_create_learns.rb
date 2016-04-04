class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.text :answer
      t.string :instructions
      t.string :title

      t.timestamps null: false
    end
  end
end
