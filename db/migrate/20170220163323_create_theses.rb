class CreateTheses < ActiveRecord::Migration[5.0]
  def change
    create_table :theses do |t|
      t.string :title
      t.string :subtitle
      t.date :year
      t.string :resume
      t.string :license
      t.string :link
      t.references :user, foreign_key: true
      # t.references :diploma, foreign_key: true
      # t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
