class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :suffix, :integer
    add_column :users, :age_range, :integer, null: false
    add_column :users, :country, :string, null: false
    add_column :users, :subscribed, :boolean
  end
end
