require 'rails_helper'

RSpec.describe "verbs/index", type: :view do
  before(:each) do
    assign(:verbs, [
      Verb.create!(
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
      ),
      Verb.create!(
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
      )
    ])
  end

  it "renders a list of verbs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Infinitive".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Present".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Past".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Participle".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Trascription".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ru".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("En".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
