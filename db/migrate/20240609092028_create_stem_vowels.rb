class CreateStemVowels < ActiveRecord::Migration[7.1]
  def change
    create_table :stem_vowels do |t|
      t.string :scheme, null: false, index: {unique: true}
      t.string :assoc
      t.string :sample

      t.timestamps
    end
  end
end
