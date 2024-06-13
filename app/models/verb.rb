################################################################################
#   Model Verb
#     part_of_speech  - Reference
#     stem_vowel      - Reference
#     infinitive      - Infinitiv ist eine unbestimmte Form eines Verbs
#                       (an indefinite form of a verb)
#     present         - Präsens
#     past            - Präteritum
#     participle      - Partizip (причастие)
#     transcription
#     ru              - Infinitiv auf Russisch
#     en              - Infinitiv auf Englischen
#     form            - Type of declension (enum)
#     level           - Certificate level (enum)
#     sg_suffix       - Declension suffix for singular (enum)
#     pl_suffix       - Declension suffix for plural (enum)
#
#   08.06.2024  Zhenya
#   13.06.2024  Last update
################################################################################
class Verb < ApplicationRecord
  belongs_to :part_of_speech
  belongs_to :stem_vowel

  has_many :conjugations
  has_many :verb_examples

  accepts_nested_attributes_for :conjugations, allow_destroy: true, #limit: 6,
  reject_if: proc {|attr| attr['present_simple'].blank? or attr['past_simple'].blank? or attr['present_perfect'].blank?}
  before_destroy :remove_conjugations, prepend: true

  accepts_nested_attributes_for :verb_examples, allow_destroy: true, 
  reject_if: :all_blank
  before_destroy :remove_verb_examples, prepend: true

  enum level:     %w(A1 A2 B1 B2 C1 C2)
  enum auxiliary: %w(hat ist hat/ist)
  enum form:      %w(irregular regular modal)
  enum prefix:    %w(na inseparable separable ge)

  validates :infinitive, presence: true
  validates :present,    presence: true
  validates :past,       presence: true
  validates :participle, presence: true
  validates :en,         presence: true
  validates :ru,         presence: true

  def remove_conjugations
    conjugations.each { |conjugation| conjugation.destroy } if conjugations.present?
  end

  def remove_verb_examples
    verb_examples.each { |example| example.destroy } if verb_examples.present?
  end
end
