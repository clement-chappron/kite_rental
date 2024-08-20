class RemoveColumnPitureFromUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :profile_picture, :string
    remove_column :users, :avatar, :string
    remove_column :products, :image, :string
  end
end
