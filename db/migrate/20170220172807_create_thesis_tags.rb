class CreateThesisTags < ActiveRecord::Migration[5.0]
  def change
    create_table :thesis_tags do |t|
      t.references :thesis, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
