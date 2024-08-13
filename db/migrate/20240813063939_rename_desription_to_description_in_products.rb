class RenameDesriptionToDescriptionInProducts < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :desription, :description
  end
end
