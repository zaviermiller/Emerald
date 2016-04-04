class CreateHelpTickets < ActiveRecord::Migration
  def change
    create_table :help_tickets do |t|
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
