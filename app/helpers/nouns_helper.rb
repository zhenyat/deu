module NounsHelper
  # not used...
  def ending(noun)
    "<b><font color='red'>#{noun.ending}</font></b>".html_safe
  end

  def declension noun, gcase
    noun.noun_declensions.find_by(gcase: gcase)
  end

  # not used...
  def declension_singular noun, gcase_abbr_de
    number = Number.find_by(de: 'Singular')
    article = Article.find_by(
      gcase: Gcase.find_by(abbr_de: gcase_abbr_de),
      number: number,
      gender: noun.gender
    )
    "#{article.de} #{noun.de}"
  end
  
  # not used...
  def declension_plural noun, gcase_abbr_de
    number = Number.find_by(de: 'Plural')
    article = Article.find_by(
      gcase: Gcase.find_by(abbr_de: gcase_abbr_de),
      number: number,
      gender: Gender.find_by(en: 'other')
    )
    # "#{article.de} #{noun.de}"
    "#{article.de} #{noun.de}"
  end

  def show_article noun
    Article.find_by(gcase: Gcase.find_by(en: 'nominative'), number: Number.find_by(en: 'singular'),gender: noun.gender).de
  end

  def show_noun_colorized noun
    case noun.gender.abbr_en
    when 'M'
      klass = "text-blue-700 font-bold"
    when 'F'
      klass = "text-red-700 font-bold"
    when 'N'
      klass = "text-green-700 font-bold"
    else
      klass = "text-yellow-700 font-bold"
    end
    content_tag(:div, content_tag(:div, show_article(noun) + " " + noun.de + " " + fine_transcription(noun.transcription)), class: klass)
  end

  def show_noun_de noun
    content_tag(:div, content_tag(:div, show_article(noun) + " " + noun.de + " " + fine_transcription(noun.transcription)), class: "border-2", style: "color: blue")
  end
end
