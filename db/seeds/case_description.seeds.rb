begin
  kasus = Case.find_by de: 'Nominativ'
  kasus.description = 'Используется для подлежащего в предложении. 
    Например, в предложении <strong><em>Der Hund bellt</em></strong> или «Собака лает» слово «der Hund» 
    стоит в именительном падеже, потому что оно является подлежащим в предложении'
  kasus.save

  kasus = Case.find_by de: 'Akkusativ'
  kasus.description = 'Используется для прямого дополнения предложения, 
  т.е. предмета, на который направлено действие или же который создается в результате
  действия. Например, в предложении <strong><em>Ich sehe den Hund</em></strong> или «Я вижу собаку» слово 
  «den Hund» стоит в винительном падеже, потому что оно является прямым дополнением 
  предложения'
  kasus.save

  kasus = Case.find_by de: 'Dativ'
  kasus.description = 'Используется для обозначения косвенного объекта
  предложения, предмета или лица которому адресовано действие.
  Например, в предложении <strong><em>Ich gebe dem Hund ein Leckerli</em></strong> или «Я угощаю собаку»
  «dem Hund» стоит в дательном падеже, потому что оно является косвенным 
  дополнением предложения'
  kasus.save

  kasus = Case.find_by de: 'Genitiv'
  kasus.description = 'Используется для обозначения принадлежности.
  Например, в предложении <strong><em>Das ist der Hund des Mannes</em></strong> или «Это собака человека» 
  «des Mannes» стоит в родительном падеже, поскольку указывает на то, что собака 
  принадлежит человеку'
  kasus.save

  puts "===== Cases description added"

rescue StandardError => e
  puts "----- Achtung! 'Case description': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
