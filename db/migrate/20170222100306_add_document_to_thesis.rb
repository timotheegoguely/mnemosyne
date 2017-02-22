class AddDocumentToThesis < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :document, :string
  end
end
