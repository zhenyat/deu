FactoryBot.define do
  factory :conjugation do
    part_of_speech { nil }
    verb { nil }
    personal_pronoun { 1 }
    present_simple { "MyString" }
    past_simple { "MyString" }
    present_perfect { "MyString" }
  end
end
