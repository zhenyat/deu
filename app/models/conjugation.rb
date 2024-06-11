class Conjugation < ApplicationRecord
  belongs_to :verb

  enum personal_pronoun: %w(ich du er/sie/es wir ihr sie/Sie)
  
  validates :present_simple,  presence: true
  validates :past_simple,     presence: true
  validates :present_perfect, presence: true
end
