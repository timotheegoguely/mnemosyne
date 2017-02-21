class AddAcronymToDiplomas < ActiveRecord::Migration[5.0]
  def change
    add_column :diplomas, :acronym, :string
  end
end
