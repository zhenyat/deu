require 'rails_helper'

RSpec.describe "Home Routing", type: :request do
  for locale in Rails.application.config.i18n.available_locales do
    it "returns http success for #{locale}" do
      get "/#{locale}"
      expect(response).to have_http_status(:success)
    end
  end

  it "returns route error for locale 'fr'" do
    get "/fr"
    expect(response.status).to eq(404)
  end
end
