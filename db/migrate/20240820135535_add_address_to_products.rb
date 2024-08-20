class AddAddressToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :address, :string
  end
end
