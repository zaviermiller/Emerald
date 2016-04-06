class AddCreateTo < ActiveRecord::Migration
  def change
  	add_column :lessons, :create, :boolean
  end
end
