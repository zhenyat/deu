class CreateVerbExamples < ActiveRecord::Migration[7.1]
  def change
    create_table :verb_examples do |t|
      t.references :verb, null: false, foreign_key: true
      t.string :de,    null: false
      t.string :en,    null: false
      t.string :ru,    null: false

      t.timestamps
    end
  end
end
