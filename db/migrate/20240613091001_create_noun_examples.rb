class CreateNounExamples < ActiveRecord::Migration[7.1]
  def change
    create_table :noun_examples do |t|
      t.references :noun, null: false, foreign_key: true
      t.string :de,    null: false
      t.string :en
      t.string :ru,    null: false

      t.timestamps
    end
  end
end
