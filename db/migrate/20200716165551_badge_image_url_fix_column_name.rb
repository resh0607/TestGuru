class BadgeImageUrlFixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :badges, :image_url, :image
  end
end
