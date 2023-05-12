class CreateZombies < ActiveRecord::Migration[7.0]
  def change
    create_table :zombies do |t| # automatically creates a PRIMARY KEY called ID
      t.string :name
      t.text :bio
      t.integer :age

      t.timestamps # SAME AS: t.datetime :created_at
                   #          t.datetime :updated_at
    end
  end
end
