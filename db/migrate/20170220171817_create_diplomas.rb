class CreateDiplomas < ActiveRecord::Migration[5.0]
  def change
    create_table :diplomas do |t|
      t.string :name
      t.string :degree

      t.timestamps
    end
  end
end
