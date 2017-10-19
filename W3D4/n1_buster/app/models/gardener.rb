class Gardener < ApplicationRecord
  belongs_to :house

  has_many :plants,
    class_name: :Plant,
    foreign_key: :gardener_id
end
