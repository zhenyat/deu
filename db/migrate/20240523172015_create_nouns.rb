class CreateNouns < ActiveRecord::Migration[7.1]
  def change
    create_table :nouns do |t|
      t.references :part_of_speech, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.string  :de, null: false
      t.string  :en, null: false
      t.string  :ru, null: false
      t.string  :transcription
      t.integer :ending, null: false, limit: 1, default: 0
      t.integer :level,  null: false, limit: 1, default: 0
      t.integer :kind,   null: false, limit: 1, default: 0
      t.integer :sg_suffix, null: false, limit: 1, default: 0
      t.integer :pl_suffix, null: false, limit: 1, default: 0
      t.string  :comment

      t.timestamps
    end
  end
end
