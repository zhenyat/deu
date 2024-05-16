begin
  if (Number.present? and not Number.exists?)
    Number.create!([
      {de: 'Singular', en: 'singular', ru: 'единственное число',  abbr_de: 'sg', abbr_en: 'sg', abbr_ru: 'ед.ч.'},
      {de: 'Plural', en: 'plural', ru: 'множественное число',  abbr_de: 'pl', abbr_en: 'pl', abbr_ru: 'мн.ч.'},
      {de: 'Höflichkeitsform', en: 'polite', ru: 'вежливая форма',  abbr_de: 'höflich', abbr_en: 'polite', abbr_ru: 'вежл.ф.'}
    ])
    puts "===== #{Number.count} 'Number' record(s) created"
  else
    puts "===== 'Number' seeding skipped"
  end

rescue StandardError => e
  puts "----- Achtung! 'Number': something went wrong..."
  puts "Rescued: #{e.inspect}"
end
