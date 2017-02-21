class CreateDiplomaSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :diploma_subcategories do |t|
      t.references :diploma, foreign_key: true

      t.timestamps
    end
  end
end
