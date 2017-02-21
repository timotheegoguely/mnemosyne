class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :school, foreign_key: true
    add_reference :theses, :diploma, foreign_key: true
    add_reference :theses, :school, foreign_key: true
    add_reference :diploma_subcategories, :subcategory, foreign_key: true
  end
end
