begin
  if (Person.present? and not Person.exists?)
    Person.create!([
      {de: '1. Person', en: '1st person', ru: '1-е лицо',  abbr_de: '1. P', abbr_en: '1', abbr_ru: '1-е л.'},
      {de: '2. Person', en: '2nd person', ru: '2-е лицо',  abbr_de: '2. P', abbr_en: '2', abbr_ru: '2-е л.'},
      {de: '3. Person', en: '3rd person', ru: '3-е лицо',  abbr_de: '3. P', abbr_en: '3', abbr_ru: '3-е л.'}
    ])
    puts "===== #{Person.count} 'Person' record(s) created"
  else
    puts "===== 'Person' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Person': something went wrong..."
  puts "Rescued: #{e.inspect}"
end