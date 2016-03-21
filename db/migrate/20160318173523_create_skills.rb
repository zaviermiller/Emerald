class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
        t.boolean :html5
        t.boolean :css3
        t.boolean :ruby
        t.boolean :javascript
        t.boolean :python
        t.boolean :jquery
        t.boolean :php
      t.timestamps null: false
    end
  end
end
