class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.references :part_of_speech, null: false, foreign_key: true
      t.references :gcase, null: false, foreign_key: true
      t.references :number, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.integer :kind, null: false, limit: 1, default: 0
      t.string :de, null: false

      t.timestamps
    end
  end
end
