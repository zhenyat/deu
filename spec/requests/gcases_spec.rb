require 'rails_helper'

RSpec.describe "Gcases", type: :request do
  for locale in Rails.application.config.i18n.available_locales do
    it "returns http success for #{locale}" do
      get "/#{locale}/genders"
      expect(response).to have_http_status(:success)
    end
  end

  it "returns route error for locale 'fr'" do
    get "/fr/genders"
    expect(response).to have_http_status(404)
    # OR: expect(response.status).to eq(404)
  end
end
