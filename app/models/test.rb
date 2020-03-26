class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :questions, dependent: :destroy
  has_many :tests_users
  has_many :users, through: :tests_users
  
  def self.by_category(category)
    Test.joins("JOIN categories ON tests.category_id = categories.id").where(categories: {title: category}).order(title: :desc).pluck(:title)
  end
end
