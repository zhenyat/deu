class StemVowel < ApplicationRecord
  has_many :verbs

  validates :scheme, presence: true, uniqueness: true
end
