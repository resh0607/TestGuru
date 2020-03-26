class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :authored_tests, class_name: 'Test', dependent: :destroy

  def tests_by_level(level)
    Test.joins("JOIN tests_users ON tests.id = tests_users.test_id").where(tests_users:{user_id: id}, level: level)
  end
end
