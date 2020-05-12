class AddTypeAttributeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :string, default: 'User', null: false
    add_index :users, :type
    remove_column :users, :admin
  end
end
