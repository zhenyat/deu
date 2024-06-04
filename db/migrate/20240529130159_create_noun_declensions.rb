class CreateNounDeclensions < ActiveRecord::Migration[7.1]
  def change
    create_table :noun_declensions do |t|
      t.references :noun, null: false, foreign_key: true
      t.references :gcase, null: false, foreign_key: true
      t.string :singular, null: false
      t.string :plural, null: false

      t.timestamps
    end
  end
end
