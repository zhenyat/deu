begin
  if (Case.present? and not Case.exists?)
    Case.create!([
      { de: 'Nominativ', en: 'nominative', ru: 'именительный',
        abbr_de: 'Nom.', abbr_en: 'NOM', abbr_ru: 'и.п.',
        questions_de: 'Wer? Was?', questions_en: 'Who? What?', questions_ru: 'Кто? Что?'
      },
      { de: 'Akkusativ', en: 'accusative', ru: 'винительный',
        abbr_de: 'Akk.', abbr_en: 'ACC', abbr_ru: 'в.п.',  
        questions_de: 'Wen? Was?', questions_en: 'Whom? What?', questions_ru: 'Кого? Что?'# Куда?'
      },
      { de: 'Dativ', en: 'dative', ru: 'дательный',
        abbr_de: 'Dat.', abbr_en: 'DAT', abbr_ru: 'д.п.',
        questions_de: 'Wem?', questions_en: 'Whom? to What?', questions_ru: 'Кому? Чему?'# Где? Когда?'
      },
      { de: 'Genitiv', en: 'genitive', ru: 'родительный',  
        abbr_de: 'Gen.', abbr_en: 'GEN', abbr_ru: 'р.п.',
        questions_de: 'Wessen?', questions_en: 'Whose? From What? or What of?', questions_ru: 'Чей? Чья? Чьё? Чьи?'
      }
    ])

    puts "===== #{Case.count} 'Case' record(s) created"
  else
    puts "===== 'Case' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Case': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
