class Test < ApplicationRecord

  def self.by_category(category)
    Test.joins("JOIN categories ON tests.category_id = categories.id").where(categories: {title: category}).order(:title).reverse_order.pluck(:title)
  end
end
