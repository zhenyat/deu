require 'rails_helper'

RSpec.describe "nouns/new", type: :view do
  before(:each) do
    assign(:noun, Noun.new(
      part_of_speech: nil,
      gender: nil,
      de: "MyString",
      en: "MyString",
      ru: "MyString",
      transcription: "MyString",
      plural: "MyString",
      ending: "MyString",
      comment: "MyString"
    ))
  end

  it "renders new noun form" do
    render

    assert_select "form[action=?][method=?]", nouns_path, "post" do

      assert_select "input[name=?]", "noun[part_of_speech_id]"

      assert_select "input[name=?]", "noun[gender_id]"

      assert_select "input[name=?]", "noun[de]"

      assert_select "input[name=?]", "noun[en]"

      assert_select "input[name=?]", "noun[ru]"

      assert_select "input[name=?]", "noun[transcription]"

      assert_select "input[name=?]", "noun[plural]"

      assert_select "input[name=?]", "noun[ending]"

      assert_select "input[name=?]", "noun[comment]"
    end
  end
end
