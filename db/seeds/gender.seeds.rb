begin
  if (Gender.present? and not Gender.exists?)
    Gender.create!([
      {de: 'sonstige',              en: 'other',     ru: 'прочие',  abbr_de: '-', abbr_en: '-', abbr_ru: '-'},
      {de: 'männlich / maskulinum', en: 'masculine', ru: 'м.р.',    abbr_de: 'M', abbr_en: 'M', abbr_ru: 'М'},
      {de: 'weiblich / femininum',  en: 'feminine',  ru: 'ж.р.',    abbr_de: 'F', abbr_en: 'F', abbr_ru: 'Ж'},
      {de: 'sächlich / neutrum',    en: 'neuter',    ru: 'ср.р.',   abbr_de: 'N', abbr_en: 'N', abbr_ru: 'Ср'}
    ])
    puts "===== #{Gender.count} 'Gender' record(s) created"
  else
    puts "===== 'Gender' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Gender': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
