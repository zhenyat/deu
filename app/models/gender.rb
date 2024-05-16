################################################################################
#   Model Gender
#       Four values:  any (-), masculine (M), feminime (F), neuter (N)
#
#   16.05.2024  Zhenya
################################################################################
class Gender < ApplicationRecord
  # has_many :articles
  # has_many :personal_pronouns
  # has_many :possessive_pronouns

  validates :de, presence: true, uniqueness: true
  validates :en, presence: true, uniqueness: true
  validates :ru, presence: true, uniqueness: true
  validates :abbr_de, presence: true, uniqueness: true
  validates :abbr_en, presence: true, uniqueness: true
  validates :abbr_ru, presence: true, uniqueness: true
end