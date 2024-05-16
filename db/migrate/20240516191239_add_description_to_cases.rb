class AddDescriptionToCases < ActiveRecord::Migration[7.1]
  def change
    add_column :cases, :description, :text
  end
end
