class Noun < ApplicationRecord
  belongs_to :part_of_speech
  belongs_to :gender

  validates :de, :en, :ru, presence: true
end
