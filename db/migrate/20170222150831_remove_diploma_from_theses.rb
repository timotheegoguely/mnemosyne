class RemoveDiplomaFromTheses < ActiveRecord::Migration[5.0]
  def change
    remove_reference :theses, :diploma
  end
end
