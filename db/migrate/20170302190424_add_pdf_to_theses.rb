class AddPdfToTheses < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :pdf, :string
  end
end
