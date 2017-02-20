class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :acronym
      t.string :address_1
      t.string :address_2
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :website
      t.string :phone_number

      t.timestamps
    end
  end
end
