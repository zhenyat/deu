# frozen_string_literal: true

begin
  if PartOfSpeech.present? && !PartOfSpeech.exists?
    PartOfSpeech.create!(
      [
        {
          de: 'Substativ', 
          en: 'noun',
          ru: 'существительное'
        },
        {
          de: 'Adjektiv',
          en: 'adjective',
          ru: 'прилагательное'
        },
        {
          de: 'Numerale',
          en: 'numeral',
          ru: 'числительное'
        },
        { de: 'Pronomen',
          en: 'pronoun',
          ru: 'местоимение',
          cmt_ru: "В немецком языке имеются следующие местоимения: личные, притяжательные, указательные, вопросительные, относительные, неопределенные, взаимные, возвратные и безличное еs" },

        { de: 'Personalpronomen',
          en: 'personal pronoun',
          ru: 'личное местоимение' },

        { de: 'Reflexivpronom',
          en: 'reflexive pronoun',
          ru: 'возвратное местоимение' },

        { de: 'Possessivpronom',
          en: 'possessiv pronoun',
          ru: 'притяжательное местоимение',
          cmt_ru: "Притяжательные местоимения связаны в качестве определения с существительным и согласуются с ним в роде, числе и падеже с помощью падежных окончаний.
                   \nПритяжательные местоимения склоняются в единственном числе как неопределенный артикль, а во множественном – как определенный артикль"},

        { de: 'Demonstrativpronom',
          en: 'demonstrative pronoun',
          ru: 'указательное местоимение' },

        { de: 'Indefinitpronomen',
          en: 'indefinite pronoun',
          ru: 'неопределённое местоимение' },

        { de: 'Relativpronom',
          en: 'relative pronoun',
          ru: 'вопросительное местоимение' },

        { de: 'Interrogativpronom',
          en: 'interrogative pronoun',
          ru: 'относительное местоимение' },

        { de: 'Verb',         en: 'verb',         ru: 'глагол' },
        { de: 'Adverb',       en: 'adverb',       ru: 'наречие' },
        { de: 'Präposition',  en: 'preposition',  ru: 'предлог' },
        { de: 'Konjuktion',   en: 'conjunction',  ru: 'союз' },
        { de: 'Partikel',     en: 'particle',     ru: 'частица' },
        { de: 'Interjektion', en: 'interjection', ru: 'междометие' },
        { de: 'Artikel',      en: 'article',      ru: 'артикль' }
      ]
    )
    puts "===== #{PartOfSpeech.count} 'Part Of Speech' record(s) created"
  else
    puts "===== 'Part Of Speech' seeding skipped"
  end
rescue StandardError
  puts '----- Achtung! Something went wrong...'
  puts "Rescued: #{e.inspect}"
end