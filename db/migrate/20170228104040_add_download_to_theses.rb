class AddDownloadToTheses < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :download, :boolean, default: false
  end
end
