class CreatePartsOfSpeech < ActiveRecord::Migration[7.1]
  def change
    create_table :parts_of_speech do |t|
      t.string :de, null: false, index: {unique: true}
      t.string :en, null: false, index: {unique: true}
      t.string :ru, null: false, index: {unique: true}
      t.text :cmt_de
      t.text :cmt_en
      t.text :cmt_ru

      t.timestamps
    end
  end
end
