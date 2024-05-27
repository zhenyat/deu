###################
# 2024.05.26  Template updated for locales
###################
require "rails_helper"

RSpec.describe NounsController, type: :routing do
  describe "routing" do
    I18n.available_locales.each do |locale|
      it "routes to #index" do
        expect(get: "#{locale}/nouns", ).to route_to("nouns#index", locale: "#{locale}")
      end

      it "routes to #new" do
        expect(get: "#{locale}/nouns/new").to route_to("nouns#new", locale: "#{locale}")
      end

      it "routes to #show" do
        expect(get: "#{locale}/nouns/1").to route_to("nouns#show", id: "1", locale: "#{locale}")
      end

      it "routes to #edit" do
        expect(get: "#{locale}/nouns/1/edit").to route_to("nouns#edit", id: "1", locale: "#{locale}")
      end

      it "routes to #create" do
        expect(post: "#{locale}/nouns").to route_to("nouns#create", locale: "#{locale}")
      end

      it "routes to #update via PUT" do
        expect(put: "#{locale}/nouns/1").to route_to("nouns#update", id: "1", locale: "#{locale}")
      end

      it "routes to #update via PATCH" do
        expect(patch: "#{locale}/nouns/1").to route_to("nouns#update", id: "1", locale: "#{locale}")
      end

      it "routes to #destroy" do
        expect(delete: "#{locale}/nouns/1").to route_to("nouns#destroy", id: "1", locale: "#{locale}")
      end
    end
  end
end
