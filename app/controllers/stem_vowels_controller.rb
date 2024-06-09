class StemVowelsController < ApplicationController
  def index
    @stem_vowels = StemVowel.all
  end
end
