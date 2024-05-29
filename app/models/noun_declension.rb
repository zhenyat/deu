class NounDeclension < ApplicationRecord
  belongs_to :noun
  belongs_to :gcase
  belongs_to :number

  # enum kind: %w(strong weak feminine other)

  validates :ending, presence: true
  validates :de, presence: true
end
