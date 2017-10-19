class Album < ApplicationRecord
  belongs_to :artist

  has_many :tracks,
    class_name: 'Track',
    foreign_key: :album_id

end
