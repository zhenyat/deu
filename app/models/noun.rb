################################################################################
#   Model Noun
#     part_of_speech  - Reference
#     gender          - Reference
#     de, en, ru      - standard attributes
#     transcription
#     plural          - Plural (Nominative)
#     ending          - declension ending
#
#   27.05.2024  Zhenya
################################################################################
class Noun < ApplicationRecord
  has_many :noun_declensions
  accepts_nested_attributes_for :noun_declensions, allow_destroy: true

  belongs_to :part_of_speech
  belongs_to :gender

  # enum :ending, %w(es s e en Nichts)
  enum :ending, { es: 0, s: 1, e: 2, en: 3, er: 4, Nichts: 4 }
  
  validates :de, :en, :ru, presence: true

  # Not used
  def declension_singular gcase_abbr_de
    number = Number.find_by(de: 'Singular')
    article = Article.find_by(
      gcase: Gcase.find_by(abbr_de: gcase_abbr),
      number: number,
      gender: self.gender
    )
    "#{article.de} #{self.de}"
  end
  
  # Not used
  def declension_plural gcase_abbr_de
    number = Number.find_by(de: 'Plural')
    article = Article.find_by(
      gcase: Gcase.find_by(abbr_de: gcase_abbr),
      number: number,
      gender: Gender.find_by(en: 'other')
    )
    "#{article.de} #{self.de}"
  end
end
