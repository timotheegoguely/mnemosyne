class AddCoverToTheses < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :cover, :string
  end
end
