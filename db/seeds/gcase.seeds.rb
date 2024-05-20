begin
  if (Gcase.present? and not Gcase.exists?)
    Gcase.create!([
      { de: 'Nominativ', en: 'nominative', ru: 'именительный',
        abbr_de: 'Nom.', abbr_en: 'NOM', abbr_ru: 'и.п.',
        questions_de: 'Wer? Was?', questions_en: 'Who? What?', questions_ru: 'Кто? Что?',
        description: 'Используется для подлежащего в предложении. 
          Например, в предложении <strong><em>Der Hund bellt</em></strong> или «Собака лает» слово «der Hund» 
          стоит в именительном падеже, потому что оно является подлежащим в предложении'
      },
      { de: 'Akkusativ', en: 'accusative', ru: 'винительный',
        abbr_de: 'Akk.', abbr_en: 'ACC', abbr_ru: 'в.п.',  
        questions_de: 'Wen? Was?', questions_en: 'Whom? What?', questions_ru: 'Кого? Что?',# Куда?'
        description: 'Используется для прямого дополнения предложения, 
          т.е. предмета, на который направлено действие или же который создается в результате
          действия. Например, в предложении <strong><em>Ich sehe den Hund</em></strong> или «Я вижу собаку» слово 
          «den Hund» стоит в винительном падеже, потому что оно является прямым дополнением предложения'
      },
      { de: 'Dativ', en: 'dative', ru: 'дательный',
        abbr_de: 'Dat.', abbr_en: 'DAT', abbr_ru: 'д.п.',
        questions_de: 'Wem?', questions_en: 'Whom? to What?', questions_ru: 'Кому? Чему?',# Где? Когда?'
        description: 'Используется для обозначения косвенного объекта
          предложения, предмета или лица которому адресовано действие.
          Например, в предложении <strong><em>Ich gebe dem Hund ein Leckerli</em></strong> или «Я угощаю собаку»
          «dem Hund» стоит в дательном падеже, потому что оно является косвенным 
          дополнением предложения'
      },
      { de: 'Genitiv', en: 'genitive', ru: 'родительный',  
        abbr_de: 'Gen.', abbr_en: 'GEN', abbr_ru: 'р.п.',
        questions_de: 'Wessen?', questions_en: 'Whose? From What? or What of?', questions_ru: 'Чей? Чья? Чьё? Чьи?',
        description: 'Используется для обозначения принадлежности.
          Например, в предложении <strong><em>Das ist der Hund des Mannes</em></strong> или «Это собака человека» 
          «des Mannes» стоит в родительном падеже, поскольку указывает на то, что собака 
          принадлежит человеку'
      }
    ])

    puts "===== #{Gcase.count} 'Gcase' record(s) created"
  else
    puts "===== 'Gcase' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Gcase': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
