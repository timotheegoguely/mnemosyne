class CreateSchoolSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :school_subcategories do |t|
      t.references :school, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
