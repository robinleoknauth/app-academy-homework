class Bus < ApplicationRecord
  belongs_to :route

  has_many :drivers

end
