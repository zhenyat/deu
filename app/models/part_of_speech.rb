################################################################################
#   Model PartOfSpeech
#
#   17.05.2024  Zhenya
################################################################################
class PartOfSpeech < ApplicationRecord
  has_many :articles
  has_many :nouns
  
  validates :de, :en, :ru, presence: true, uniqueness: true
end
