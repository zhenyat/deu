require 'rails_helper'

RSpec.describe "nouns/show", type: :view do
  before(:each) do
    assign(:noun, Noun.create!(
      part_of_speech: nil,
      gender: nil,
      de: "De",
      en: "En",
      ru: "Ru",
      transcription: "Transcription",
      plural: "Plural",
      ending: "Ending",
      comment: "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/De/)
    expect(rendered).to match(/En/)
    expect(rendered).to match(/Ru/)
    expect(rendered).to match(/Transcription/)
    expect(rendered).to match(/Plural/)
    expect(rendered).to match(/Ending/)
    expect(rendered).to match(/Comment/)
  end
end
