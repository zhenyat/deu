module NounsHelper
  def ending(noun)
    "<b><font color='red'>#{noun.ending}</font></b>".html_safe
  end

  def declension_singular noun, gcase_abbr_de
    number = Number.find_by(de: 'Singular')
    article = Article.find_by(
      gcase: Gcase.find_by(abbr_de: gcase_abbr_de),
      number: number,
      gender: noun.gender
    )
    "#{article.de} #{noun.de}"
  end
  
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
end
