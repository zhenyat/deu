require 'rails_helper'

RSpec.describe "verbs/new", type: :view do
  before(:each) do
    assign(:verb, Verb.new(
      part_of_speech: nil,
      stem_vowel: nil,
      infinitive: "MyString",
      present: "MyString",
      past: "MyString",
      participle: "MyString",
      trascription: "MyString",
      ru: "MyString",
      en: "MyString",
      form: 1,
      auxiliary: 1,
      prefix: 1
    ))
  end

  it "renders new verb form" do
    render

    assert_select "form[action=?][method=?]", verbs_path, "post" do

      assert_select "input[name=?]", "verb[part_of_speech_id]"

      assert_select "input[name=?]", "verb[stem_vowel_id]"

      assert_select "input[name=?]", "verb[infinitive]"

      assert_select "input[name=?]", "verb[present]"

      assert_select "input[name=?]", "verb[past]"

      assert_select "input[name=?]", "verb[participle]"

      assert_select "input[name=?]", "verb[trascription]"

      assert_select "input[name=?]", "verb[ru]"

      assert_select "input[name=?]", "verb[en]"

      assert_select "input[name=?]", "verb[form]"

      assert_select "input[name=?]", "verb[auxiliary]"

      assert_select "input[name=?]", "verb[prefix]"
    end
  end
end
