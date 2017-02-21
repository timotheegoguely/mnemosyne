class CreateThesisDiplomaSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :thesis_diploma_subcategories do |t|
      t.references :thesis_diploma, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
