class NounExample < ApplicationRecord
  belongs_to :noun

  validates :de, :en, :ru, presence: true
end
