class RemoveAgeFromZombies < ActiveRecord::Migration[7.0]
  def change
    remove_column :zombies, :age, :integer
  end
end
