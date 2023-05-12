class Zombie < ApplicationRecord
  
  scope :rotting, -> { where(rotting: true) }
  scope :fresh, -> { where("age < 20") }
  scope :recent, -> { order("created_at desc").limit(3) }

end
