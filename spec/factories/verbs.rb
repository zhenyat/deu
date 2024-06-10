FactoryBot.define do
  factory :verb do
    part_of_speech { nil }
    stem_vowel { nil }
    infinitive { "MyString" }
    present { "MyString" }
    past { "MyString" }
    participle { "MyString" }
    trascription { "MyString" }
    ru { "MyString" }
    en { "MyString" }
    form { 1 }
    auxiliary { 1 }
    prefix { 1 }
  end
end
