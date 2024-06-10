class Verb < ApplicationRecord
  belongs_to :part_of_speech
  belongs_to :stem_vowel

  # has_many   :examples
  # has_many   :conjugations

  # accepts_nested_attributes_for :examples, allow_destroy: true, 
  # reject_if: proc {|attr| attr['de'].blank?}
  
  # accepts_nested_attributes_for :conjugations, allow_destroy: true, #limit: 6,
  # reject_if: proc {|attr| attr['present_simple'].blank? or attr['past_simple'].blank? or attr['present_perfect'].blank?}

  enum auxiliary: %w(hat ist hat/ist)
  enum form:      %w(irregular regular modal)
  enum prefix:    %w(na inseparable separable)

  validates :infinitive, presence: true
  validates :present,    presence: true
  validates :past,       presence: true
  validates :participle, presence: true
  validates :en,         presence: true
  validates :ru,         presence: true
end
