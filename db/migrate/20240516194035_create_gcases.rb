class CreateGcases < ActiveRecord::Migration[7.1]
  def change
    create_table :gcases do |t|
      t.string :de, null: false, index: {unique: true}
      t.string :en, null: false, index: {unique: true}
      t.string :ru, null: false, index: {unique: true}
      t.string :abbr_de, null: false, index: {unique: true}
      t.string :abbr_en, null: false, index: {unique: true}
      t.string :abbr_ru, null: false, index: {unique: true}
      t.string :questions_de, null: false, index: {unique: true}
      t.string :questions_en, null: false, index: {unique: true}
      t.string :questions_ru, null: false, index: {unique: true}
      t.text :description

      t.timestamps
    end
  end
end
