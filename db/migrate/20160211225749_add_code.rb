class AddCode < ActiveRecord::Migration
  def change
  	add_column :users, :sign_up_code, :string
  end
end
