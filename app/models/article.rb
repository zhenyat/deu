class Article < ApplicationRecord
  belongs_to :part_of_speech
  belongs_to :gcase
  belongs_to :number
  belongs_to :gender

  enum kind: %w(indefinite definite)
  
  validates :de, presence: true
end
