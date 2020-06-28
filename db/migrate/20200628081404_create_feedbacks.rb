class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :email
      t.text :text_body
      
      t.timestamps
    end
  end
end
