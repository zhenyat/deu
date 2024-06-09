# https://www.de-online.ru/gram-tabelle/tablica_Deutsch-online.pdf

begin
  if (StemVowel.present? and not StemVowel.exists?)

    StemVowel.create scheme: 'e-a-o',    assoc: 'пЕдАгОг',   sample: 'брать — nehmen — nahm — genommen'
    StemVowel.create scheme: 'e-i-a',                        sample: 'отправляться — gehen — ging — gegangen'
    StemVowel.create scheme: 'e-o-o',    assoc: 'бЕльмОндО', sample: 'поднимать — heben — hob — gehoben'
    StemVowel.create scheme: 'ei-i-i',   assoc: 'дАЙкИрИ',   sample: 'резать — schneiden — schnitt — geschnitten'
    StemVowel.create scheme: 'ei-ie-ie', assoc: 'дАЙкИрИ',   sample: 'писать — sreiben — srieb — gesrieben'
    StemVowel.create scheme: 'ei-ie-ei'
    StemVowel.create scheme: 'i-a-o',    assoc: 'пИфАгОр',   sample: 'побеждать — gewinnen — gewann — gewonnen'
    StemVowel.create scheme: 'i-a-e',    assoc: 'дИАбЕт',    sample: 'просить — bitten — bat — gebeten'
    StemVowel.create scheme: 'i-a-u',    assoc: 'сИрАкУзы',  sample: 'находить — finden — fand — gefunden'
    StemVowel.create scheme: 'ie-o-o',   assoc: 'кИмОнО',    sample: 'летать — fliegen — flog — geflogen'
    StemVowel.create scheme: 'o-ie-u'
    StemVowel.create scheme: 'ö-o-o',    assoc: 'бЕльмОндО'
    StemVowel.create scheme: 'ü-o-o',    assoc: 'бЕльмОндО', sample: 'лгать - lügen - log - gelog'
    StemVowel.create scheme: 'u-ie-u',                       sample: 'кричать, звать — rufen — rief — gerufen'
    StemVowel.create scheme: 'nicht anwendbar'
    StemVowel.create scheme: 'nicht definiert'

    puts "===== #{StemVowel.count} 'Case' record(s) created"
  else
    puts "===== 'StemVowel' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'StemVowel': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
