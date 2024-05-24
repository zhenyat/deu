require 'rails_helper'

RSpec.describe "nouns/index", type: :view do
  before(:each) do
    assign(:nouns, [
      Noun.create!(
        part_of_speech: nil,
        gender: nil,
        de: "De",
        en: "En",
        ru: "Ru",
        transcription: "Transcription",
        plural: "Plural",
        ending: "Ending",
        comment: "Comment"
      ),
      Noun.create!(
        part_of_speech: nil,
        gender: nil,
        de: "De",
        en: "En",
        ru: "Ru",
        transcription: "Transcription",
        plural: "Plural",
        ending: "Ending",
        comment: "Comment"
      )
    ])
  end

  it "renders a list of nouns" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("De".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("En".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ru".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Transcription".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Plural".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ending".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Comment".to_s), count: 2
  end
end
