class Zombie < ApplicationRecord

  scope :rotting, -> { where(rotting: true) }
  scope :fresh, -> { where("age < 20") }
  scope :recent, -> { order("created_at desc").limit(3) }

  before_save :make_rotting

  has_one :brain, dependent: :destroy

  def make_rotting
    self.rotting = true if age > 20
  end
end
