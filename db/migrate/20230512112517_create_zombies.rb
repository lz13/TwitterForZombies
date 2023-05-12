class CreateZombies < ActiveRecord::Migration[7.0]
  def change
    create_table :zombies do |t|
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
