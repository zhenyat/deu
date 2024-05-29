class CreateNounDeclensions < ActiveRecord::Migration[7.1]
  def change
    create_table :noun_declensions do |t|
      t.references :noun, null: false, foreign_key: true
      t.references :gcase, null: false, foreign_key: true
      t.references :number, null: false, foreign_key: true
      t.integer :kind, null: false, limit: 1, default: 0
      t.string :ending, null: false
      t.string :de, null: false

      t.timestamps
    end
  end
end
