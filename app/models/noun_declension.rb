class NounDeclension < ApplicationRecord
  belongs_to :noun
  belongs_to :gcase

  # enum kind: %w(strong weak feminine other)

  validates :singular, presence: true
  validates :plural, presence: true
end
