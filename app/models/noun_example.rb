class NounExample < ApplicationRecord
  belongs_to :noun

  validates :de, :ru, presence: true
end
