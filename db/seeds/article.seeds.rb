begin
  if (Article.present? and not Article.exists?)
  
    pos = PartOfSpeech.find_by(en: 'article')
    # Definite articles
    kasus = Gcase.find_by(en: 'nominative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'der'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'die'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'das'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'definite', de: 'die'
      }
    ])
    kasus = Gcase.find_by(en: 'accusative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'den'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'die'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'das'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'definite', de: 'die'
      }
    ])
    kasus = Gcase.find_by(en: 'dative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'dem'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'der'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'dem'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'definite', de: 'den'
      }
    ])
    kasus = Gcase.find_by(en: 'genitive')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'definite', de: 'des'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'definite', de: 'der'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'definite', de: 'des'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'definite', de: 'der'
      }
    ])

    # Indefinite articles
    kasus = Gcase.find_by(en: 'nominative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'ein'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'eine'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'ein'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'indefinite', de: 'keine'
      }
    ])
    kasus = Gcase.find_by(en: 'accusative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'einen'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'eine'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'ein'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'indefinite', de: 'keine'
      }
    ])
    kasus = Gcase.find_by(en: 'dative')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'einem'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'einer'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'einem'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'indefinite', de: 'keinen'
      }
    ])
    kasus = Gcase.find_by(en: 'genitive')
    Article.create!([
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'masculine'), kind: 'indefinite', de: 'eines'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'feminine'), kind: 'indefinite', de: 'einer'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'singular'),
        gender: gender = Gender.find_by(en: 'neuter'), kind: 'indefinite', de: 'eines'
      },
      { part_of_speech: pos, gcase: kasus, number: number = Number.find_by(en: 'plural'),
        gender: gender = Gender.find_by(en: 'any'), kind: 'indefinite', de: 'keiner'
      }
    ])

    puts "===== #{Article.count} 'Article' record(s) created"
  else
    puts "===== 'Article' seeding skipped"
  end
rescue StandardError => e
  puts "----- Achtung! 'Article': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
