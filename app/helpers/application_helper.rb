module ApplicationHelper
  ###########################################
  #   Generates DDL in the top_navbar
  ###########################################
  def localized_parts_of_speech
    PartOfSpeech.all.order(I18n.locale.to_s)
  end
end
