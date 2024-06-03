module ApplicationHelper
  ###########################################
  #   Generates DDL in the top_navbar
  ###########################################

  # Transcription with spaces
  def fine_transcription(transcription)
    string_w_whitespaces = transcription.gsub(/(.)/, '\1 ').strip
    "[ #{string_w_whitespaces} ]"
  end

  def localized_parts_of_speech
    PartOfSpeech.all.order(locale.to_s)
  end

  def with_ending(object)
    if object.ending?
      root = object.de.chomp(object.ending)
      "#{root}<b><font color='red'>#{object.ending}</font></b>".html_safe
    else
      object.de
    end
  end
end
