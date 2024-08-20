class RemoveAdresseFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :adresse, :string
  end
end
