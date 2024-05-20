################################################################################
#   Model Gcase: Grammatical Case
#       Four values:  Nominativ, Akkusativ, Dativ, Genitiv
#
#   20.05.2024  Zhenya
################################################################################
class Gcase < ApplicationRecord
  has_many :articles
  # has_many :personal_pronouns
  
  validates :de, presence: true, uniqueness: true
  validates :en, presence: true, uniqueness: true
  validates :ru, presence: true, uniqueness: true
  validates :abbr_de, presence: true, uniqueness: true
  validates :abbr_en, presence: true, uniqueness: true
  validates :abbr_ru, presence: true, uniqueness: true
  validates :questions_de, presence: true, uniqueness: true
  validates :questions_en, presence: true, uniqueness: true
  validates :questions_ru, presence: true, uniqueness: true
end
