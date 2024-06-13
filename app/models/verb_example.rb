class VerbExample < ApplicationRecord
  belongs_to :verb

  validates :de, :en, :ru, presence: true
end
