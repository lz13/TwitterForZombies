class AddEmailAndRottingToZombies < ActiveRecord::Migration[7.0]
  def change
    add_column :zombies, :email, :string
    add_column :zombies, :rotting, :boolean, default: false
  end
end
