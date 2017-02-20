class CreateSchoolDiplomas < ActiveRecord::Migration[5.0]
  def change
    create_table :school_diplomas do |t|
      t.references :school, foreign_key: true
      t.references :diploma, foreign_key: true

      t.timestamps
    end
  end
end
