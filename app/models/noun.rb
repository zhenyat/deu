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
  before_destroy    :remove_noun_declensions, prepend: true

  # attr_accessor     :remove_noun_declensions

  belongs_to :part_of_speech
  belongs_to :gender

  # enum :ending, %w(es s e en Nichts)
  enum :ending, { es: 0, s: 1, e: 2, en: 3, er: 4, Nichts: 4 }
  
  validates :de, :en, :ru, presence: true

  def remove_noun_declensions
    self.noun_declensions.each {|declension| declension.destroy} if self.noun_declensions.present?
  end

  def debug
    # myid = self.id
    mygender = self.gender
    # puts myid
    puts mygender
  end

  # def declension_articles_check
  #   gender = self.gender
  #   singular_number = Number.find_by(en: 'singular')
  #   plural_number = Number.find_by(en: 'plural')
  #   puts "===== gender: #{gender};  declensions: #{self.noun_declensions.count}"
  #   self.noun_declensions.each do |noun_declension|
  #     article_singular = noun_declension.singular.split().first
  #     article_plural = noun_declension.plural.split().first
  #     gcase = noun_declension.gcase

  #     if(
  #       article_singular != Article.find_by(
  #       gcase: gcase, number: singular_number, gender: gender).de
  #     )
  #       return {status: 'Not correct', message: "Incorrect singular article for case: #{gcase.en}"}
  #     end

  #     if(
  #       article_plural != Article.find_by(
  #       gcase: gcase, number: plural_number, gender: gender).de
  #     )
  #       return {status: 'error', message: "Incorrect plural article for case: #{gcase.en}"}
  #     end
  #   end
  #   return {status: 'ok', message: ''}
  # end

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
