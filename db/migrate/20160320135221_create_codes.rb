class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
    	t.string :html
    	t.string :css
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
