begin
  if (Verb.present? and not Verb.exists?)

    Verb.create(
      part_of_speech_id: PartOfSpeech.find_by(en: 'verb').id,
      stem_vowel_id: StemVowel.find_by(scheme: 'i-a-o').id,
      infinitive: 'beginnen', present: 'beginnt',
      past: 'begann', participle: 'begonnen',
      trascription: 'bəgɪnən', ru: 'начинать', en: 'begin',
      form: 0, auxiliary: 0, prefix: 1
    )
    puts "===== #{Verb.count} 'Case' record(s) created"

  else
    puts "===== 'Verb' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Verb': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
