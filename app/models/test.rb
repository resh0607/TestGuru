class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_and_belongs_to_many :users
  belongs_to :author, class_name: "User", foreign_key: "user_id"

  # def self.by_category(category)
  #   Test.joins("JOIN categories ON tests.category_id = categories.id").where(categories: {title: category}).order(title: :desc).pluck(:title)
  # end
end
