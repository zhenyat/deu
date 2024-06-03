class NounDeclension < ApplicationRecord
  belongs_to :noun
  belongs_to :gcase

  # enum kind: %w(strong weak feminine other)

  validates :singular, presence: true
  validates :plural, presence: true

  validate :articles

  private

  # Checks Declension Articles
  def articles
    gender_id = noun.gender.id
    gender_other_id = Gender.find_by(en: 'other').id        # For Plurals
    singular_number_id = Number.find_by(en: 'singular').id
    plural_number_id = Number.find_by(en: 'plural').id

    article_singular = self.singular.split().first # get singular article of the object 
    article_plural = self.plural.split().first     # get plural article of the object
    gcase = self.gcase

    if(article_singular != Article.find_by(gcase_id: gcase_id, number_id: singular_number_id, gender_id: gender_id).de)
        errors.add(:base, "Article error: singular for case: #{gcase.en}")
      end
      
    if(article_plural != Article.find_by(gcase_id: gcase_id, number_id: plural_number_id, gender_id: gender_other_id).de)
      errors.add(:base, "Article error: plural for case: #{gcase.en}")
    end
  end
end
