require 'rails_helper'

RSpec.describe "Home Routing", type: :request do
  for locale in ['de', 'en', 'ru'] do
    it "returns http success #{locale}" do
      get "/#{locale}"
      expect(response).to have_http_status(:success)
    end
  end

  it "returns route error for fr" do
    get "/fr"
    expect(response.status).to eq(404)
  end
end
