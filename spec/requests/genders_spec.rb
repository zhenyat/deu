require 'rails_helper'

RSpec.describe "Genders", type: :request do
  for locale in ['de', 'en', 'ru'] do
    it "returns http success #{locale}" do
      get "/#{locale}/genders"
      expect(response).to have_http_status(:success)
    end
  end

  it "returns route error for fr" do
    get "/fr/genders"
    expect(response.status).to eq(404)
  end
end
