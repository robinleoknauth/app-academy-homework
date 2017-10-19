class Plant < ApplicationRecord
  belongs_to :gardener,
    class_name: :Gardener,
    foreign_key: :gardener_id

  has_many :seeds,
    class_name: :Seed,
    foreign_key: :plant_id
end
