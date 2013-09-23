class AddNameToLanguagues < ActiveRecord::Migration
  def change
	add_column :languagues, :name, :string
  end
end
