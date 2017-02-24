class DropAttachinary < ActiveRecord::Migration[5.0]
  def change
    drop_table :attachinary_files
  end
end
