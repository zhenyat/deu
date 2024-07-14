module VerbsHelper
  def transcript(transcription)
    string_w_whitespaces = transcription.gsub(/(.)/, '\1 ').strip
    "[ #{string_w_whitespaces} ]"
  end
  def ordered_conjugations verb
    ordered_list = []
    conjugations = verb.conjugations
    Conjugation.personal_pronouns.each do |personal_pronouns|
      conjugations.each do |conjugation|
        ordered_list << conjugation if personal_pronouns.first == conjugation.personal_pronoun
      end
    end
    ordered_list
  end
end
