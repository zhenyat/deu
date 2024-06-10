require 'rails_helper'

RSpec.describe "verbs/show", type: :view do
  before(:each) do
    assign(:verb, Verb.create!(
      part_of_speech: nil,
      stem_vowel: nil,
      infinitive: "Infinitive",
      present: "Present",
      past: "Past",
      participle: "Participle",
      trascription: "Trascription",
      ru: "Ru",
      en: "En",
      form: 2,
      auxiliary: 3,
      prefix: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Infinitive/)
    expect(rendered).to match(/Present/)
    expect(rendered).to match(/Past/)
    expect(rendered).to match(/Participle/)
    expect(rendered).to match(/Trascription/)
    expect(rendered).to match(/Ru/)
    expect(rendered).to match(/En/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
