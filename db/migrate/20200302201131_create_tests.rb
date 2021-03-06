class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text :title
      t.integer :level
      t.references :category, foreign_key: true

      t.timestamps
    end

    add_index :tests, [:title, :level], unique: true
  end
end
