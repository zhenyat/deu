################################################################################
#   Model StemVowel: Основная (корневая) гласная в глаголах
#     scheme
#     assoc   - Russian association
#     sample  - in German
#
#     08.06.2024  Zhenya
################################################################################
class StemVowel < ApplicationRecord
  has_many :verbs

  validates :scheme, presence: true, uniqueness: true
end
