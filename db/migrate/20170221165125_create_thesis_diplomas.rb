class CreateThesisDiplomas < ActiveRecord::Migration[5.0]
  def change
    create_table :thesis_diplomas do |t|
      t.references :thesis, foreign_key: true
      t.references :diploma, foreign_key: true

      t.timestamps
    end
  end
end
