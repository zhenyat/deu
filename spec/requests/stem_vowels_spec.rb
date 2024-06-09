require 'rails_helper'

RSpec.describe "StemVowels", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/stem_vowels/index"
      expect(response).to have_http_status(:success)
    end
  end

end
