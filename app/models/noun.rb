################################################################################
#   Model Noun
#     part_of_speech  - Reference
#     gender          - Reference
#     de, en, ru      - Noun in nominative
#     transcription
#     ending          - Noun's ending
#     kind            - Type of declension (enum)
#     level           - Certificate level (enum)
#     sg_suffix       - Declension suffix for singular (enum)
#     pl_suffix       - Declension suffix for plural (enum)
#
#   08.06.2024  Zhenya
################################################################################
class Noun < ApplicationRecord
  has_many :noun_declensions
  accepts_nested_attributes_for :noun_declensions, allow_destroy: true
  before_destroy :remove_noun_declensions, prepend: true

  # attr_accessor     :remove_noun_declensions

  belongs_to :part_of_speech
  belongs_to :gender

  # enum :kind, %w[strong weak mixed feminine]
  enum :kind,   %w(regular irregular)
  enum :level,  %w(A1 A2 B1 B2 C1 C2)
  enum :sg_suffix, %w(- ns s), suffix: true
  enum :pl_suffix, %w(- en er n ), prefix: :pl
  enum :ending, %w(- es e en ns s), prefix: :ending

  # declension_scheme = {
  #   strong: {
  #     es: %w[s ss ß x tz z],
  #     s: [%w[el en end em er], %w[lein ling ing ig]]
  #   },
  #   weak: {
  #     male_animate_nouns: 'all',
  #     male_persons: 'e',
  #     nationalities: 'e',
  #     animals: 'e',
  #     foreign_words: %w[and ant ast at ent et ist loge om oph ot],
  #     endings: %w[and ant ast ent et ist it loge nom oph ot]
  #   },
  #   mixed: {},
  #   feminine: {},
  #   plural: %w(e el er)
  # }
  validates :de, :en, :ru, presence: true

  def remove_noun_declensions
    noun_declensions.each { |declension| declension.destroy } if noun_declensions.present?
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
  # def declension_singular(gcase_abbr_de)
  #   number = Number.find_by(de: 'Singular')
  #   article = Article.find_by(
  #     gcase: Gcase.find_by(abbr_de: gcase_abbr),
  #     number:,
  #     gender:
  #   )
  #   "#{article.de} #{de}"
  # end

  # Not used
  # def declension_plural(gcase_abbr_de)
  #   number = Number.find_by(de: 'Plural')
  #   article = Article.find_by(
  #     gcase: Gcase.find_by(abbr_de: gcase_abbr),
  #     number:,
  #     gender: Gender.find_by(en: 'other')
  #   )
  #   "#{article.de} #{de}"
  # end
end
