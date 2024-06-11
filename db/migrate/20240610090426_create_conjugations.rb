class CreateConjugations < ActiveRecord::Migration[7.1]
  def change
    create_table :conjugations do |t|
      t.references :verb, null: false, foreign_key: true
      t.integer    :personal_pronoun, null: false, default: 0, limit: 1
      t.string     :present_simple,   null: false
      t.string     :past_simple,      null: false
      t.string     :present_perfect,  null: false

      t.timestamps
    end
  end
end
