FactoryBot.define do
  factory :article do
    part_of_speech { nil }
    gcase { nil }
    number { nil }
    gender { nil }
    kind { 1 }
    de { "MyString" }
  end
end
