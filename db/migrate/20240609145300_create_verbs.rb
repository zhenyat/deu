class CreateVerbs < ActiveRecord::Migration[7.1]
  def change
    create_table :verbs do |t|
      t.references :part_of_speech, null: false, foreign_key: true
      t.references :stem_vowel, null: false, foreign_key: true
      t.string :infinitive, null: false
      t.string :present, null: false
      t.string :past, null: false
      t.string :participle, null: false
      t.string :trascription
      t.string :ru, null: false
      t.string :en, null: false
      t.integer :level, null: false, limit: 1, default: 0
      t.integer :form, null: false, limit: 1, default: 0
      t.integer :auxiliary, null: false, limit: 1, default: 0
      t.integer :prefix, null: false, limit: 1, default: 0

      t.timestamps
    end
  end
end
