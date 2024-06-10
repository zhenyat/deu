module VerbsHelper
  def transcript(transcription)
    string_w_whitespaces = transcription.gsub(/(.)/, '\1 ').strip
    "[ #{string_w_whitespaces} ]"
  end
end
