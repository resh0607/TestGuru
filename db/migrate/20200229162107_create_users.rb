class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
